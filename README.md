# Postbox

A Flutter app that fetches posts from JSONPlaceholder API and caches them locally using Hive so the app works offline. It also allows saving favorite posts in a separate Hive box.

## Features
- Fetch posts from REST API (`https://jsonplaceholder.typicode.com/posts`)
- Cache posts locally in `postsBox` to display them when there is no internet connection
- Add or remove posts from favorites using `favoritesBox`
- View all saved favorites in a dedicated screen with instant UI updates using `ValueListenableBuilder`
- Display an empty state message when no favorites are saved


## Screenshots

### 1. Posts Screen (Online)
Fetching and displaying all posts from the API.
![Posts Screen](Screenshots/po1.png)
![Posts Screen](Screenshots/po2.png)

### 2. Adding to Favorites
Tapping the star icon to save posts to favorites.
![Starred Posts](Screenshots/po3.png)
![Starred Posts](Screenshots/po4.png)

### 3. Favorites Screen
Viewing all saved favorite posts.
![Favorites Screen](Screenshots/po5.png)

### 4. Offline Mode
Loading cached posts and favorites from Hive without an internet connection.
![Offline Mode](Screenshots/po6.png)

### 5. Empty Favorites
Displaying a message when no posts are in favorites.
![Empty Favorites](Screenshots/po7.png)