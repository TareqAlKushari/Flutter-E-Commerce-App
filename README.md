# Flutter E-Commerce App

A cross-platform E-Commerce application built with Flutter, demonstrating modern UI/UX, product listing, and shopping cart features. This project is suitable for developers looking to learn or showcase a basic e-commerce app built using Flutter.

## Features

- Product catalog with image assets
- Carousel slider for featured products
- Google Fonts integration for custom typography
- Localization support via `flutter_localizations`
- Material Design UI
- Ready for integration with additional features (such as authentication, cart management, payments, etc.)

## Directory Structure

- `lib/` — Main Dart codebase (UI, business logic)
- `assets/` — Contains images and sample data for products and categories
- `test/` — Unit and widget tests
- `ios/`, `android/`, `web/`, `linux/`, `macos/`, `windows/` — Platform-specific code and configurations

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.0.5 <4.0.0)
- Dart SDK (comes with Flutter)
- A device or emulator for iOS, Android, or web

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/TareqAlKushari/Flutter-E-Commerce-App.git
   cd Flutter-E-Commerce-App
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

### Assets

Ensure all asset paths exist as specified in `pubspec.yaml`:
- `assets/images`
- `assets/food_pics`
- `assets/magazine_pics`
- `assets/profile_pics`
- `assets/sample_data`

### Localization

This project uses `flutter_localizations` for supporting multiple languages. You can extend it by adding your own translations.

## Dependencies

Key dependencies as specified in `pubspec.yaml`:
- `carousel_slider`
- `cupertino_icons`
- `google_fonts`
- `flutter_localizations`

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for review.

## License

This project is for educational and demonstration purposes.

---
