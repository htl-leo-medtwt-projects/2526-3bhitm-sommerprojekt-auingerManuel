<?php
session_start();

require_once '../../datenbank/mysqlConnection.php';

require_once '../../datenbank/GetData/Profile/profile.php';

require_once '../../datenbank/GetData/country/country.php';

require_once '../../datenbank/GetData/Manga/mangas.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: ../../index.php");
    exit();
} else {
    $userId = $_SESSION['user_id'];
}

$userData = getUserData($userId);
$countryData = getCountry($userId);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaCourt</title>
    <link rel="stylesheet" href="../../mainstyle.css">
    <link rel="stylesheet" href="../../styles/profileStyle.css">
    <script src="../../nav.js" defer></script>
    <script src="../../scripts/favMangas.js" defer></script>
</head>
<body>

<div id="header">
      <div id="logo">
        <img src="../../Images/Logo.png" alt="MangaCourt Logo">
      </div>
</div>
  



  <main>
    <div id="profile-header">
        <div id="profile-picture">
            <img src="../../Images/dummy.png" alt="dummy">
        </div>
        <div id="profile-info">
            <h1><?php echo htmlspecialchars($userData['username']); ?></h1>
            <p><?php echo htmlspecialchars($countryData['countryname']); ?></p>
        </div>
    </div>

    <div id="profil-fav">
       
      
        <?php printFavMangas($userId); ?>
       
    
    </div>

</main>
    
<nav class="nav-bar" id="navBar">
 
    <!-- MyInteraction -->
    <a href="#" class="nav-item" data-id="myinteraction">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <rect x="3" y="3" width="18" height="18" rx="3"/>
          <path d="M8 12h8M12 8v8"/>
        </svg></div>
      <span class="nav-label">MyInteraction</span>
    </a>
 
    <!-- Top -->
    <a href="#" class="nav-item" data-id="top">
      <div class="nav-icon">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <polygon points="12,2 15.09,8.26 22,9.27 17,14.14 18.18,21.02 12,17.77 5.82,21.02 7,14.14 2,9.27 8.91,8.26"/>
        </svg></div>
      <span class="nav-label">Top</span>
    </a>
 
    <!-- HomePage  -->
    <a href="../../index.php" class="nav-item" data-id="homepage">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <path d="M3 11L12 3l9 8v9a1 1 0 01-1 1H5a1 1 0 01-1-1z"/>
          <path d="M9 21V12h6v9"/>
        </svg></div>
      <span class="nav-label">HomePage</span>
    </a>
 
    <!-- Profil (active by default) -->
    <a href="./profile.php" class="nav-item active" data-id="profil">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <circle cx="12" cy="8" r="4"/>
          <path d="M4 20c0-4 3.58-7 8-7s8 3 8 7"/>
        </svg></div>
      <span class="nav-label">Profil</span>
    </a>
 
  </nav>

</body>
</html>
