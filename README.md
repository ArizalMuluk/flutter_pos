# Pos

A modern, elegant, and offline-first Point of Sale (POS) application for small cafés and restaurants, built with Flutter.

## Features

- **Menu Management**
  - Add, edit, and delete menu items
  - Upload images for menu items
  - Grid/List view based on item count

- **Cart & Transactions**
  - Quick add items to cart
  - Adjust quantities
  - Calculate change
  - Process payments
  - Transaction history

- **Table Management**
  - Add and manage tables
  - Track table status (Available/Occupied)
  - Support for both dine-in and takeaway orders

- **Financial Reporting**
  - Daily sales reports
  - Export reports to Excel
  - Print receipts and reports

## Technical Details

- **State Management**: Riverpod
- **Database**: SQLite (sqflite)
- **Image Handling**: image_picker
- **Reporting**: printing, excel
- **UI Framework**: Flutter Material 3

## Getting Started

1. **Prerequisites**
   - Flutter SDK (latest stable version)
   - Android Studio / VS Code
   - Git

2. **Installation**
   ```bash
   git clone <repository-url>
   cd cashier
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

3. **Running the App**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── data/
│   ├── db/
│   │   └── database_helper.dart
│   └── models/
│       ├── menu_item.dart
│       ├── table.dart
│       └── transaction.dart
├── features/
│   ├── menu/
│   │   └── presentation/
│   │       ├── pages/
│   │       ├── providers/
│   │       └── widgets/
│   ├── cart/
│   │   └── presentation/
│   │       ├── pages/
│   │       ├── providers/
│   │       └── widgets/
│   ├── history/
│   │   └── presentation/
│   │       ├── pages/
│   │       ├── providers/
│   │       └── widgets/
│   └── settings/
│       └── presentation/
│           ├── pages/
│           ├── providers/
│           └── widgets/
└── main.dart
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is Unlisence
#
