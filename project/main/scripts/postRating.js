document.addEventListener('DOMContentLoaded', function() {
    const stars = document.querySelectorAll('.star');
    const ratingInput = document.getElementById('rating-value');
    const formRatingInput = document.getElementById('form-rating-value');

    if (!stars.length) return;

    // Star hover and click events
    stars.forEach(star => {
        star.addEventListener('click', function() {
            const value = this.dataset.value;
            ratingInput.value = value;
            if (formRatingInput) {
                formRatingInput.value = value;
            }
            updateStars(value);
        });

        star.addEventListener('mouseenter', function() {
            const value = this.dataset.value;
            previewStars(value);
        });
    });

    // Reset stars on mouse leave
    const postRatingDiv = document.getElementById('post-rating');
    if (postRatingDiv) {
        postRatingDiv.addEventListener('mouseleave', function() {
            updateStars(ratingInput.value);
        });
    }

    function previewStars(value) {
        stars.forEach(star => {
            if (star.dataset.value <= value) {
                star.classList.add('hover');
            } else {
                star.classList.remove('hover');
            }
        });
    }

    function updateStars(value) {
        stars.forEach(star => {
            if (star.dataset.value <= value) {
                star.classList.add('active');
                star.classList.remove('hover');
            } else {
                star.classList.remove('active', 'hover');
            }
        });
    }

    // Initialize stars with current value on page load
    if (ratingInput.value > 0) {
        updateStars(ratingInput.value);
    }
});
