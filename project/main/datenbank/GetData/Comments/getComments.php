<?php
session_start();
        
require_once '../../mysqlConnection.php';
require_once './comments.php';

date_default_timezone_set('Europe/Vienna');

if (isset($_GET['post_id'])) {
    $postId = intval($_GET['post_id']);
    $comments = getCommentsByPost($postId);
    $currentUserId = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;
    
    if (count($comments) > 0) {
        foreach ($comments as $comment) {
            $profileImage = (!empty($comment['imageName'])) ? '../../Images/uploads/' . htmlspecialchars($comment['imageName']) . ".jpg" : '../../Images/dummy.png';
            $isOwnComment = $currentUserId && $comment['user_user_id'] == $currentUserId;
            
        
            $date = new DateTime($comment['created_at']);
            $createdAt = date('Y-m-d H:i:s');
            ?>
            <div class="comment-item <?php echo $isOwnComment ? 'own-comment' : ''; ?>">
                <img src="<?php echo $profileImage; ?>" alt="<?php echo htmlspecialchars($comment['username']); ?>" class="comment-avatar">
                <div class="comment-content">
                    <div class="comment-header">
                        <p class="comment-author"><strong><?php echo htmlspecialchars($comment['username']); ?></strong><?php echo $isOwnComment ? ' <span class="own-badge">(You)</span>' : ''; ?></p>
                        <?php if ($isOwnComment): ?>
                            <button class="delete-comment-btn" onclick="deleteComment(<?php echo $comment['comment_id']; ?>, <?php echo $postId; ?>)" title="Delete comment">✕</button>
                        <?php endif; ?>
                    </div>
                    <p class="comment-text"><?php echo nl2br(htmlspecialchars($comment['content'])); ?></p>
                    <p class="comment-date"><?php echo $createdAt; ?></p>
                </div>
            </div>
            <?php
        }
    } else {
        echo '<p class="no-comments">No comments yet. Be the first to comment!</p>';
    }
}
?>