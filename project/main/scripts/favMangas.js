function addToFavorites(userId, mangaId) {
    fetch('./datenbank/GetData/manga/addfav.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ user_id: userId, manga_id: mangaId })
    })
    .then(res => res.json())
    .then(data => {
        if (data.success) {
            alert('Zu Favoriten hinzugefügt!');
        } else {
            alert('Fehler: ' + data.message);
        }
    });
}


function removeFromFavorites(userId, mangaId) {
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