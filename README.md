# 📱 Facebook UI Clone (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=Dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-blue?style=for-the-badge)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

A pixel-perfect, responsive mobile UI clone of the **Facebook** app built using **Flutter** and **Dart**. This project demonstrates clean UI architecture, reusable widget composition, form validation, dynamic story carousels, native splash screen setup, and standard Facebook design tokens.

---

## 🌟 Highlights & Features

- **🚀 Native & In-App Splash Screen**:
  - Configured with `flutter_native_splash` including Android 12+ splash screen support.
  - Meta branding with seamless timed transition (`Future.delayed`) into the authentication flow.

- **🔐 Login & Authentication UI**:
  - Authentic Facebook mobile login screen with official branding.
  - Form validation with custom regex rules for email/phone and password verification.
  - Interactive password field with toggleable show/hide eye icon.
  - Soft-keyboard dismiss on tap outside (`FocusManager.unfocus`).
  - "Forgotten Password?" and "Create Account" secondary navigation flows.

- **🏠 Home Screen & Multi-Tab Navigation**:
  - 6-tab navigation powered by `DefaultTabController` and `TabBarView`:
    - 📰 **Home Feed**
    - 🎬 **Reels**
    - 🛍️ **Marketplace**
    - 👤 **Profile**
    - 🔔 **Notifications**
    - ⚙️ **Menu / Avatar Settings**
  - Custom top app bar with Facebook logo, action buttons for **Create (+)**, **Search**, and **Messenger**.

- **📸 Stories Carousel**:
  - Horizontal scrolling story tray.
  - "Create a Story" card with user profile badge and add action.
  - Gradient-tinted story preview cards with author avatars and captions.

- **📰 Feed & Post Cards**:
  - "What's on your mind?" create post bar with gallery attachment shortcut.
  - Rich feed posts featuring:
    - Author information, publication time, and privacy indicator.
    - Post captions and high-resolution media preview.
    - Engagement counters (Likes, Comments, Shares).
    - Interactive action bar with Like, Comment, and Share buttons.

- **🧩 Clean & Modular Architecture**:
  - Centralized asset management (`AppAssets` / `AppImages` / `AppIcons`).
  - Standardized color system (`AppColors`).
  - Highly reusable custom widgets (`CustomTextFormField`).

---

## 📸 Screenshots Preview

| Splash Screen | Login Screen | Home Feed & Stories | Post Card |
|:---:|:---:|:---:|:---:|
| <img src="assets/images/andorid12Splash.png" width="180"/> | <img src="assets/images/logo.png" width="180"/> | <img src="assets/images/facebook_logo.png" width="180"/> | <img src="assets/images/world_cup.jpg" width="180"/> |

> *Tip: Replace previews above with your actual device screenshots.*

---

## 🏗️ Project Structure

The project follows a clean, scalable folder structure separating core utilities, shared widgets, and feature screens:

```text
facebook/
├── assets/
│   ├── icons/                     # UI icons (like, comment, share, messenger, etc.)
│   └── images/                    # Logos, avatars, and media assets
├── lib/
│   ├── core/
│   │   ├── utils/
│   │   │   ├── app_assets.dart    # Centralized asset paths
│   │   │   ├── app_colors.dart    # Theme colors & Facebook design palette
│   │   │   └── app_validator.dart # Input validation logic (Email, Password)
│   │   └── widgets/
│   │       └── custom_text_form_field.dart # Reusable styled text input
│   ├── screens/
│   │   ├── home/
│   │   │   ├── widgets/
│   │   │   │   ├── home_tab_app_bar.dart  # Top app bar with search & actions
│   │   │   │   └── home_tab_body.dart     # Stories carousel & news feed posts
│   │   │   └── home_screen.dart           # TabBar & screen coordinator
│   │   ├── login/
│   │   │   └── login_screen.dart          # Form UI & login validation
│   │   └── splash_screen.dart             # Timed splash with Meta branding
│   └── main.dart                          # App entry point & named routes
├── flutter_native_splash.yaml             # Native splash screen configuration
├── pubspec.yaml                           # Project dependencies and asset declarations
└── README.md
```

---

## 🛠️ Tech Stack & Dependencies

| Technology | Purpose |
|:---|:---|
| **[Flutter](https://flutter.dev)** (v3.13.5+) | Cross-platform UI toolkit |
| **[Dart](https://dart.dev)** | Modern object-oriented programming language |
| **[flutter_native_splash](https://pub.dev/packages/flutter_native_splash)** | Native splash screens on Android & iOS |
| **[cupertino_icons](https://pub.dev/packages/cupertino_icons)** | iOS Cupertino icon set |
| **Material 3** | Google Material Design system |

---

## 🚀 Getting Started

Follow these steps to run the project locally on your machine.

### Prerequisites

Ensure you have installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (`>= 3.13.5`)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or physical device connected

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/khaledaliyasser445-cloud/facebook_khaled.git
   cd facebook_khaled
   ```

2. **Install Flutter packages**:
   ```bash
   flutter pub get
   ```

3. **Generate Native Splash Screen (Optional)**:
   If you modify `flutter_native_splash.yaml`, regenerate the native splash screens using:
   ```bash
   dart run flutter_native_splash:create
   ```

4. **Run the application**:
   ```bash
   flutter run
   ```

---

## 📋 Code Highlights

### Centralized Form Validation
Reusable email and password validation rules defined in `AppValidator`:
```dart
// lib/core/utils/app_validator.dart
static String? emailValidator(String? email) {
  if (email == null || email.isEmpty) return 'Email Cannot be empty';
  final RegExp regex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
  );
  if (!regex.hasMatch(email)) return 'Invalid Email Address';
  return null;
}
```

### Reusable Input Field
Encapsulates obscure text toggling, focus behaviors, custom borders, and styling:
```dart
CustomTextFormField(
  hintText: "Mobile Number or Email Address",
  keyboardType: TextInputType.emailAddress,
  textInputAction: TextInputAction.next,
  validator: AppValidator.emailValidator,
)
```

---

## 🗺️ Roadmap & Future Enhancements

- [ ] State management integration using **BLoC / Riverpod**
- [ ] Backend & Authentication integration with **Firebase**
- [ ] Real-time commenting bottom-sheet modal
- [ ] Interactive Post Creation dialog (image picker & text input)
- [ ] Dark Mode / Theme toggle support
- [ ] Real-time Chat & Messenger screen implementation

---

## 👨‍💻 Author

**Khaled Ali Yasser**
- GitHub: [@khaledaliyasser445-cloud](https://github.com/khaledaliyasser445-cloud)
- Project: [facebook_khaled](https://github.com/khaledaliyasser445-cloud/facebook_khaled)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
