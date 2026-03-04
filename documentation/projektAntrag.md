# Projektantrag MEDIENTECHNIK 3BHITM - Manuel Auinger

**NAME:** Manga Court

---

## Beschreibung
Die Plattform dient als Bewertung von Leserinnen und Lesern zu Mangas.

---

## USP (Unique Selling Proposition)
- **Fokus auf Mangas:** Die Seite ist streng auf Mangas bezogen und beinhaltet keine Animes, damit neue Nutzer nicht direkt durcheinander sind.  
- **Community-orientiert:** Bewertungen, Kommentare und Posts ermöglichen Austausch und Diskussionen.  
- **Einfache Bedienbarkeit:** Die Seite baut auf ein einfaches System auf mit wenigen Unterpunkten.  
- **Personalisierung:** Nutzer können eigene Profile, Favoriten (Mangas und andere Nutzer) anlegen.  
- **Moderation:** Falls Fake News zu Mangas verteilt werden, können diese von der Administration entfernt werden.  
- **Interaktive Features:** Trends, Badges.

---

## UI & UX

### UI
- **Klare Navigation:** Home, Mangas → Bewertungen, Post, Profil, Suche.  
- **Übersichtliche Manga-Seite:** Coverbild, Titel, Autor, Genre, Bewertung (Gesamt), Kommentar (mit einzelner User-Bewertung).  
- **Visuelle Hervorhebung:** Top-Komment, Kommentar von Freunden.

### UX
- **Schnelle Registrierung:** Email, Username und Passwort. Daten wie Alter (Datum), Biografie etc. im Profil optional zu vergeben.  
- **Schnelle Interaktion:** Bewertung direkt auf den Manga-Seiten abgeben.  
- **Community-Erlebnis:** Likes, Kommentare, Votes.

---

## Coder Plan | Projekt aus Sicht des Entwicklers

### Technologien
- PHP  
- SQL  
- phpMyAdmin  
- Libraries für Bewertungen

### Frontend
- Komponenten: Navbar, Manga-Page, Comment-Section, User-Profil etc.

### Backend
- **Datenbank:** phpMyAdmin  
- **API-Routen:** GET und POST  
- **Authentifizierung:** Teilnahme an Interaktionen erfordert Account, jedoch können Posts ohne Anmeldung angesehen werden.  
- **Rollenmanagement:** Admin und User
