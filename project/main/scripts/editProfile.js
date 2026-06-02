
const editModal = document.getElementById('editProfileModal');
const editBtn = document.getElementById('editProfileBtn');
const closeBtn = document.querySelector('.close-modal');
const cancelBtn = document.querySelector('.btn-cancel');
const editForm = document.getElementById('editProfileForm');


function closeModal() {
    editModal.style.display = 'none';
    document.body.style.overflow = 'auto';
}


if (editBtn) {
    editBtn.addEventListener('click', () => {
        editModal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
    });
}


if (closeBtn) {
    closeBtn.addEventListener('click', closeModal);
}


if (cancelBtn) {
    cancelBtn.addEventListener('click', closeModal);
}

window.addEventListener('click', (event) => {
    if (event.target === editModal) {
        closeModal();
    }
});


if (editForm) {
    editForm.addEventListener('submit', async (event) => {
        event.preventDefault();
        
        const formData = new FormData(editForm);
        
        try {
            const response = await fetch('../../datenbank/GetData/user/editUser.php', {
                method: 'POST',
                body: formData
            });
            
            const data = await response.json();
            
            if (data.success) {
                
                closeModal();
               
                window.location.reload();
            } else {
                alert('Error: ' + data.message);
            }
        } catch (error) {
            console.error('Error:', error);
            closeModal();
        }
    });
}
