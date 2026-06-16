// Kommentar pop up 
function openCommentModal(postId) {
  const modal = document.getElementById('commentModal');
  const postIdInput = document.getElementById('comment-post-id');
  
  if (postIdInput) {          // ← nur setzen, wenn das Input-Feld existiert
    postIdInput.value = postId;
  }
  
  modal.style.display = 'block';
  loadCommentsModal(postId);
}

function closeCommentModal() {

  const modal = document.getElementById('commentModal');
  modal.style.display = 'none';
  location.reload();
}

// Kommentare laden
function loadCommentsModal(postId) {
  const commentDisplay = document.getElementById('comments-display');
  
  fetch('../../datenbank/GetData/Comments/getComments.php?post_id=' + postId)
    .then(response => response.text())
    .then(data => {
      commentDisplay.innerHTML = data;
    })
    .catch(error => console.error('Error loading comments:', error));

 
}

// Kommentar löschen sendet auf deleteComment.php
function deleteComment(commentId, postId) {
  fetch('../../datenbank/GetData/Comments/deleteComment.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: 'comment_id=' + commentId + '&post_id=' + postId
  })
  .then(response => response.json())
  .then(data => {
    if (data.success) {
      loadCommentsModal(postId); 
    } else {
      alert('Fehler beim Löschen des Kommentars!');
    }
  })
  .catch(error => {
    console.error('Error deleting comment:', error);
    alert('Fehler beim Löschen des Kommentars!');
  });
   location.reload(); 
}

window.onclick = function(event) {
  const modal = document.getElementById('commentModal');
  if (event.target == modal) {
    modal.style.display = 'none';
  }
}

// Kommentar hinzufügen sendet auf addComment.php
document.addEventListener('DOMContentLoaded', function() {
  const commentForm = document.getElementById('comment-form');
  if (commentForm) {
    commentForm.addEventListener('submit', function(e) {
      e.preventDefault();
      const postId = document.getElementById('comment-post-id').value;
      const formData = new FormData(this);
      
      fetch('../../datenbank/GetData/Comments/addComment.php', {
        method: 'POST',
        body: formData
      })
      .then(() => {
        loadCommentsModal(postId); 
        commentForm.reset();
      })
      .catch(error => console.error('Error posting comment:', error));
    });
  }
});