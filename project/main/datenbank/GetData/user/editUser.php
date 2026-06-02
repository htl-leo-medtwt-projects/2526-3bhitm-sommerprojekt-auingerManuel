<?php
session_start();

require_once '../../mysqlConnection.php';


// User bearbeiten


// Anmeldung prüfen
if (!isset($_SESSION['user_id'])) {
    http_response_code(401);
    echo json_encode(['success' => false, 'message' => 'Unauthorized']);
    exit();
}

// POST Request Handling
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_SESSION['user_id'];
    $username = trim($_POST['username'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $country_id = intval($_POST['country_id'] ?? 0);
    $imageName = '';
    
    // Inputs prüfen
    if (empty($username) || empty($email)) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Username and email are required']);
        exit();
    }
    
    // File upload handling
    if (isset($_FILES['profile_picture']) && $_FILES['profile_picture']['error'] === UPLOAD_ERR_OK) {
        $uploadDir = __DIR__ . '/../../../Images/uploads/';
        $maxSize = 5 * 1024 * 1024; // 5MB
        $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
        
        $file = $_FILES['profile_picture'];
        
        // File Größe prüfen
        if ($file['size'] > $maxSize) {
            http_response_code(400);
            echo json_encode(['success' => false, 'message' => 'File too large. Max 5MB allowed.']);
            exit();
        }
        
        // File Typ prüfen
        $finfo = new finfo(FILEINFO_MIME_TYPE);
        $mimeType = $finfo->file($file['tmp_name']);
        if (!in_array($mimeType, $allowedTypes)) {
            http_response_code(400);
            echo json_encode(['success' => false, 'message' => 'Invalid file type. Only JPEG, PNG, and GIF allowed.']);
            exit();
        }
        
        // Upload Verzeichnis erstellen falls nicht existiert
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0755, true);
        }

        $imageName = ''; 
        
        // Generiere eindeutigen Dateinamen für Ordner
        $ext = pathinfo($file['name'], PATHINFO_EXTENSION);
        $imageName = 'user_' . $userId . '_' . time(); // der jedoch für Datenbank
        $imageNameFolder = 'user_' . $userId . '_' . time() . '.' . strtolower($ext);
        $destination = $uploadDir . $imageNameFolder;
        
        // Datei verschieben
        if (!move_uploaded_file($file['tmp_name'], $destination)) {
            http_response_code(500);
            echo json_encode(['success' => false, 'message' => 'Failed to upload file']);
            exit();
        }
    }
    
    // Prüfen ob Username bereits vergeben ist (außer bei aktuellem User)
    $checkStmt = mysqli_prepare($conn, "SELECT user_id FROM users WHERE username = ? AND user_id != ?");
    mysqli_stmt_bind_param($checkStmt, "si", $username, $userId);
    mysqli_stmt_execute($checkStmt);
    mysqli_stmt_store_result($checkStmt);
    
    if (mysqli_stmt_num_rows($checkStmt) > 0) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Username already taken']);
        exit();
    }
    
    // Ohne Bild User update
    if (!empty($imageName)) {
        // Update with new image
        $updateStmt = mysqli_prepare($conn, "UPDATE users SET username = ?, email = ?, country_country_id = ?, imageName = ? WHERE user_id = ?");
        mysqli_stmt_bind_param($updateStmt, "ssisi", $username, $email, $country_id, $imageName, $userId);
    } else {
        // mit Bild User updaten
        $updateStmt = mysqli_prepare($conn, "UPDATE users SET username = ?, email = ?, country_country_id = ? WHERE user_id = ?");
        mysqli_stmt_bind_param($updateStmt, "ssii", $username, $email, $country_id, $userId);
    }
    
    // Resultat zurückgeben
    if (mysqli_stmt_execute($updateStmt)) {
        echo json_encode(['success' => true, 'message' => 'Profile updated successfully']);
    } else {
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'Failed to update profile']);
    }
    
    mysqli_stmt_close($checkStmt);
    mysqli_stmt_close($updateStmt);
} else {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
}
?>
