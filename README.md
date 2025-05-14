Sure! Here's your complete `README.md` with the **default Flutter template section** added at the bottom, merged with the customized project README in a clean, GitHub-ready format:

````markdown
# 🎬 Edstem - Flutter Movie Search App

A Flutter app to search for movies using the OMDb API. Built with **Clean Architecture**, **BLoC**, and **Dependency Injection**, featuring responsive UI, pagination, and error handling.

---

## ✨ Features

- 🔍 Search for movies
- 📄 View detailed movie info
- 📦 Infinite scroll pagination
- 🎯 Clean architecture structure
- 💉 Dependency Injection using `get_it`
- 📡 API integration using Dio
- 🧪 Unit testing with `mocktail`

---

## 🏗️ Project Structure

```plaintext
lib/
├── core/           # Common utilities, constants, network exceptions
├── data/           # Data models, repositories
├── domain/         # Entities and use cases
├── di/             # Dependency injection
├── presentation/   # UI, widgets, BLoC
````

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/edstem.git
cd edstem
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Add `.env` file

Create a `.env` file in the root directory with your OMDb API key:

```env
OMDB_API_KEY=your_api_key_here
```

> Get your key from [https://www.omdbapi.com/apikey.aspx](https://www.omdbapi.com/apikey.aspx)

### 4. Run the app

```bash
flutter run
```

---

## 🧪 Running Tests

This project includes unit tests for:

* BLoC logic
* Use cases
* Repository mock behavior

Run tests with:

```bash
flutter test
```

---

## 📦 Main Dependencies

| Package                | Purpose                          |
| ---------------------- | -------------------------------- |
| `flutter_bloc`         | State management (BLoC pattern)  |
| `dio`                  | Network requests                 |
| `get_it`               | Dependency injection             |
| `flutter_dotenv`       | Environment variable management  |
| `mocktail`             | Unit testing & mocking           |
| `equatable`            | Value equality                   |
| `cached_network_image` | Efficient image caching          |
| `google_fonts`         | Custom font styling              |
| `bloc_concurrency`     | Optimized concurrent BLoC events |

