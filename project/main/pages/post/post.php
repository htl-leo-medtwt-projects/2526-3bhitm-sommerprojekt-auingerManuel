<?php
session_start();

require_once '../../datenbank/mysqlConnection.php';
require_once '../../datenbank/GetData/manga/mangas.php';
require_once '../../datenbank/GetData/chapter/chapter.php';
require_once '../../datenbank/GetData/post/post.php';

$manga = getManga($_GET['manga_id']);
$chapter = getChapterByMangaAndChapterId($_GET['manga_id'], $_GET['chapter_id']);
$posts = getPost($_GET['manga_id'], $_GET['chapter_id']);
$postCount = getCountOfposts($_GET['manga_id'], $_GET['chapter_id']);
$alreadyPosted = isset($_SESSION['user_id']) ? 
checkAlreadyPosted($_GET['manga_id'], $_GET['chapter_id'], $_SESSION['user_id']) : false;
$userPost = isset($_SESSION['user_id']) && $alreadyPosted ? 
getUserPost($_GET['manga_id'], $_GET['chapter_id'], $_SESSION['user_id']) : null;



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaCourt</title>
    <link rel="stylesheet" href="../../mainstyle.css">
    <link rel="stylesheet" href="../../styles/postStyle.css">
    <script src = "../../nav.js"></script>
    <script src="../../scripts/postRating.js"></script>
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

    <div id="posts">
        <h2>Posts for <?php echo htmlspecialchars($manga['name'] ?? 'Unknown') . " - Chapter " . htmlspecialchars($chapter['name'] ?? 'Unknown'); ?></h2>
        <p>Total Posts: <?php echo $postCount; ?></p>

      <?php if (!isset($_SESSION['user_id'])): ?>
        <div id="post-add">
          <h3>Sign in to post</h3>
          <p>You need to be logged in to add posts and rate this chapter.</p>
          <a href="../../pages/login/login.php" class="login-link">Sign in now</a>
        </div>
      <?php elseif ($alreadyPosted && $userPost): ?>
        <div id="post-add">
          <h3>Update Your Rating</h3>
          <p>You have already posted for this chapter. You can update your rating:</p>
          <div id="post-rating">
            <label>Update rating:</label>
            <div class="stars-container">
              <span class="star" data-value="1">★</span>
              <span class="star" data-value="2">★</span>
              <span class="star" data-value="3">★</span>
              <span class="star" data-value="4">★</span>
              <span class="star" data-value="5">★</span>
            </div>
            <input type="hidden" id="rating-value" value="<?php echo htmlspecialchars($userPost['rating'] ?? 0); ?>">
          </div>
          <form action="../../datenbank/GetData/post/updateRating.php" method="post" id="update-rating-form">
            <input type="hidden" name="post_id" value="<?php echo htmlspecialchars($userPost['post_id']); ?>">
            <input type="hidden" name="manga_id" value="<?php echo htmlspecialchars($_GET['manga_id']); ?>">
            <input type="hidden" name="chapter_id" value="<?php echo htmlspecialchars($_GET['chapter_id']); ?>">
            <input type="hidden" name="rating_value" id="form-rating-value" value="<?php echo htmlspecialchars($userPost['rating'] ?? 0); ?>">
            <button type="submit">Update Rating</button>
          </form>
        </div>
      <?php else: ?>
        <div id="post-add">
          <h3>Add New Post</h3>
          <div id="post-rating">
            <label>Rate this chapter:</label>
            <div class="stars-container">
              <span class="star" data-value="1">★</span>
              <span class="star" data-value="2">★</span>
              <span class="star" data-value="3">★</span>
              <span class="star" data-value="4">★</span>
              <span class="star" data-value="5">★</span>
            </div>
            <input type="hidden" id="rating-value" value="0">
          </div>
          <form action="../../datenbank/GetData/post/addPost.php" method="post" id="post-form">
            <input type="hidden" name="manga_id" value="<?php echo htmlspecialchars($_GET['manga_id']); ?>">
            <input type="hidden" name="chapter_id" value="<?php echo htmlspecialchars($_GET['chapter_id']); ?>">
            <input type="hidden" name="rating_value" id="form-rating-value" value="0">
            <textarea name="salutation" placeholder="Write your post here..." required></textarea>
            <button type="submit">Add Post</button>
          </form>
        </div>
      <?php endif; ?>

      <div id="post-list">
        <?php foreach ($posts as $post): ?>
            <div class="post-item">
                <p><strong><?php echo htmlspecialchars($post['bloger_name']); ?></strong> said:</p>
                <p><?php echo nl2br(htmlspecialchars($post['salutation'])); ?></p>
                <div id="posts-rating" class="post-rating">
                  <?php 
                    $rating = isset($post['rating']) ? intval($post['rating']) : 0;
                    if ($rating > 0) {
                      for ($i = 1; $i <= 5; $i++) {
                        echo '<span class="rating-star' . ($i <= $rating ? ' filled' : '') . '">★</span>';
                      }
                    } else {
                      echo '<span class="no-rating">No rating</span>';
                    }
                  ?>
                </div>
                <p><em>Posted on: <?php echo htmlspecialchars($post['create_at']); ?></em></p>
            </div>
        <?php endforeach; ?>

      </div>
</div>

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
 
    <!-- HomePage (active by default) -->
    <a href="../../index.php" class="nav-item active" data-id="homepage">
      <div class="nav-icon"> 
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"
             stroke-linecap="round" stroke-linejoin="round">
          <path d="M3 11L12 3l9 8v9a1 1 0 01-1 1H5a1 1 0 01-1-1z"/>
          <path d="M9 21V12h6v9"/>
        </svg></div>
      <span class="nav-label">HomePage</span>
    </a>
 
    <!-- Profil -->
    <a href="../Profile/profile.php" class="nav-item" data-id="profil">
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