function addToFavorites(userId, mangaId) {
    fetch('./datenbank/GetData/manga/addfav.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, manga_id: mangaId })
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
           location.reload();
        } else {
            alert('Fehler: ' + data.message);
        }
    });
}


function removeFromFavorites_profil(userId, mangaId) {
    fetch('../../datenbank/GetData/manga/removefav.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, manga_id: mangaId })
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            location.reload();
        } else {
            alert('Fehler: ' + data.message);
        }   
    });
}

function getFavorites(userId) {
    fetch('../../datenbank/GetData/manga/getfav.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId })
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            const favContainer = document.getElementById('fav-container'); 
            favContainer.innerHTML = '';
            data.favorites.forEach(manga => {
                const mangaItem = document.createElement('div');
                mangaItem.classList.add('manga-item');
                mangaItem.innerHTML = `
                    <a href="./pages/Manga/manga.php?id=${manga.manga_id}" class="manga-item">
                        <img src="../../Images/logos/${manga.name}.jpg" alt="${manga.name}">
                        <h3>${manga.name}</h3>
                        <p>By: ${manga.mangaka_name}</p>
                    </a>
                `;
                favContainer.appendChild(mangaItem);
            });
        } else {
            alert('Fehler: ' + data.message);
        }
    });
}

function removeFromFavorites(userId, mangaId) {
    fetch('./datenbank/GetData/manga/removefav.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, manga_id: mangaId })
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            location.reload();
        } else {
            alert('Fehler: ' + data.message);
        }   
    });
}


function scrollMangaSlider(direction) {
    const slider = document.getElementById('mangaSlider');
    const scrollAmount = slider.clientWidth;
    if (direction === 'next') {
        slider.scrollBy({ left: scrollAmount, behavior: 'smooth' });
    } else {
        slider.scrollBy({ left: -scrollAmount, behavior: 'smooth' });
    }       
}