<?php
Session_start();

require_once "./datenbank/mysqlConnection.php";
require_once "./datenbank/GetData/rating/rating.php";
require "./datenbank/GetData/manga/mangas.php";

echo '<link href="mainstyle.css' . '?' . time() . '" rel="stylesheet">';


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaCourt</title>
    <link rel="stylesheet" href="./mainstyle.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
    <script src="./scripts/favMangas.js" defer></script>
    <script src="./scripts/mangaListAnimation.js" defer></script>
    <script src="./scripts/searchManga.js" defer></script>
    <script src="./nav.js" defer></script>
</head>
<body>

    <div id="header">
      <div id="logo">
        <img src="./Images/Logo.png" alt="MangaCourt Logo">
      </div>

      <?php

       if (isset($_SESSION['user_id'])) {
        echo '<div id="signIn"><a href="./datenbank/GetData/user/logoutUser.php"><p>Log Out</p></a></div>';
      } else {
        echo '<div id="signIn"><a href="./pages/login/login.php"><p>Sign in</p></a></div>';
      }
      ?>
  

  <div id="searchBar">
    <input type="text" id="searchInput" placeholder="Search for manga...">
    <button id="searchButton">Search</button>
  </div>
</div>
 <?php
getMangas();
  ?>

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
    <a href="./pages/trends/trends.php" class="nav-item" data-id="top">
      <div class="nav-icon">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <polygon points="12,2 15.09,8.26 22,9.27 17,14.14 18.18,21.02 12,17.77 5.82,21.02 7,14.14 2,9.27 8.91,8.26"/>
        </svg></div>
      <span class="nav-label">Top</span>
    </a>
 
    <!-- HomePage (active by default) -->
    <a href="./index.php" class="nav-item active" data-id="homepage">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <path d="M3 11L12 3l9 8v9a1 1 0 01-1 1H5a1 1 0 01-1-1z"/>
          <path d="M9 21V12h6v9"/>
        </svg></div>
      <span class="nav-label">HomePage</span>
    </a>
 
    <!-- Profil -->
    <a href="./pages/Profile/profile.php" class="nav-item" data-id="profil">
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