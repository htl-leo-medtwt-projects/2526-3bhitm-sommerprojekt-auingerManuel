<?php

session_start();

require_once "../../datenbank/mysqlConnection.php";

$defaultLimit = 10; 
$limit = $defaultLimit;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaCourt</title>
    <link rel="stylesheet" href="../../mainstyle.css">
    <link rel="stylesheet" href="../../styles/trendsStyle.css">
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
    <script src="../../nav.js" defer></script>
    <script src="../../scripts/trends.js" defer></script>
</head>
<body>

<div id="header">
      <div id="logo">
        <img src="../../Images/Logo.png" alt="MangaCourt Logo">
      </div>

      <?php

       if (isset($_SESSION['user_id'])) {
        echo '<div id="signIn"><a href="./datenbank/GetData/user/logoutUser.php"><p>Log Out</p></a></div>';
      } else {
        echo '<div id="signIn"><a href="./pages/login/login.php"><p>Sign in</p></a></div>';
      }
      ?>
      </div>

<h2>Top Mangas</h2>

    <div id="trends-input">
  <!-- Methodenauswahl -->
  <div class="btn-group">
    <button id="btn-votes" class="active" onclick="selectMethod('votes')">⭐ Top by Votes</button>
    <button id="btn-comments" onclick="selectMethod('comments')">💬 Top by Comments</button>
  </div>

  <div id="limit-container" style="margin-top: 1rem;">
  <!-- Slider (ki) -->
  <label>Anzahl: <strong id="limit-badge">10</strong></label>
  <input type="range" id="limit-slider" min="0" max="2" step="1" value="2"
    oninput="updateLimit(this.value)" style="width:100%; margin: 8px 0;" />
  <div class="slider-labels">
    <span>3</span><span>5</span><span>10</span>
  </div>
  </div>

  <br>
  <button onclick="loadData()" style="flex:none; width:100%; padding:12px; margin-top:1rem;">
    Laden
  </button>
</div>
  <div id="results"></div>

  <nav class="nav-bar" id="navBar">
 
    <!-- MyInteraction -->
    <a href="../../pages/Interaction/interaction.php" class="nav-item" data-id="myinteraction">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <rect x="3" y="3" width="18" height="18" rx="3"/>
          <path d="M8 12h8M12 8v8"/>
        </svg></div>
      <span class="nav-label">MyInteraction</span>
    </a>
 
    <!-- Top -->
    <a href="./trends.php" class="nav-item active" data-id="top">
      <div class="nav-icon">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <polygon points="12,2 15.09,8.26 22,9.27 17,14.14 18.18,21.02 12,17.77 5.82,21.02 7,14.14 2,9.27 8.91,8.26"/>
        </svg></div>
      <span class="nav-label">Top</span>
    </a>
 
    <!-- HomePage (active by default) -->
    <a href="../../index.php" class="nav-item" data-id="homepage">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <path d="M3 11L12 3l9 8v9a1 1 0 01-1 1H5a1 1 0 01-1-1z"/>
          <path d="M9 21V12h6v9"/>
        </svg></div>
      <span class="nav-label">HomePage</span>
    </a>
 
    <!-- Profil -->
    <a href="../../pages/Profile/profile.php" class="nav-item" data-id="profil">
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