function searchMangas(searchTerm) {
  if (!searchTerm.trim()) {
    location.reload();
    return;
  }

  fetch('./datenbank/GetData/manga/searchManga.php?search=' + encodeURIComponent(searchTerm))
    .then(response => response.json())
    .then(mangas => {
      const mangaList = document.querySelector('.manga-list');
      mangaList.innerHTML = '';

      if (mangas.length === 0) {
        mangaList.innerHTML = '<p style="grid-column: 1/-1; color: var(--color-text-muted); text-align: center; padding: 40px;">Keine Mangas gefunden</p>';
        return;
      }

      mangas.forEach(manga => {
        const mangaHTML = `
          <div class="manga-item">
            <a href="./pages/Manga/manga.php?id=${manga.manga_id}" class="manga-item">
              <img src="./Images/logos/${manga.name}.jpg" alt="${manga.name}">
              <h3>${manga.name}</h3>
              <p>By: ${manga.mangaka_name}</p>
            </a>
            <div onclick="addToFavorites(${manga.manga_id})" class="favInfoBox">
              <p>Add to Favorites</p>
            </div>
          </div>
        `;
        mangaList.innerHTML += mangaHTML;
      });
    })
    .catch(error => console.error('Error:', error));
}

// Event Listener für den Search Button
document.addEventListener('DOMContentLoaded', function() {
  const searchButton = document.getElementById('searchButton');
  const searchInput = document.getElementById('searchInput');
  
  // Suche beim Button-Klick
  searchButton.addEventListener('click', function() {
    const searchValue = searchInput.value;
    searchMangas(searchValue);
  });
  
  // Suche beim Drücken der Enter-Taste
  searchInput.addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
      const searchValue = searchInput.value;
      searchMangas(searchValue);
    }
  });
});
