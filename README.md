# WayOne

A modern finance/mobile dashboard mobile app built with Flutter.  
It features a dynamic, scrollable layout with various sections like offers, loans, insurance, tools — all data-driven for flexibility.

## ✨ Features

- Responsive home screen with multiple sections:  
  - Big banner offers  
  - Credit-score widget  
  - Loan types grid  
  - Insurance types grid  
  - Horizontal “New Offers” carousel  
  - Tools & cards (e.g., Digital Gold, Fintech Tips)  
  - Mini-banner (EMI calculator)  
  - Refer & Earn banner  
- Clean, modular architecture:  
  - `data/repositories` for lists/models  
  - `models` for data structures  
  - `components` (widgets) for UI sections  
  - `constants` for colors, assets, strings  
- Easily maintainable and extendable.

## 🎯 Tech Stack

- Flutter & Dart  
- CustomScrollView & Slivers for performant scrolling  
- Asset-based images for banners & icons  
- Models repository pattern for data decoupling

## 🚀 Getting Started

1. Clone the repo  
   ```bash
   git clone https://github.com/Manish123Sharma/WayOne.git
   cd WayOne

2. Install dependencies
    ```bash
    flutter pub get

3. Add assets

  Ensure you have the following assets in assets/images/ (and referenced in pubspec.yaml):

    ```bash
    banner_offer_1.png  
    banner_trusted.png  
    credit_card.png  
    cibil_widget.png  
    emi_banner.png  
    refer_banner.png  
    new_offer1.png  
    new_offer2.png  
    bg_banner2.png  
    bg_banner3.png  
    gold.png  
    lightbulb.png  
    wave_pattern.png

4. Run the app
    ```bash
    flutter run

---

## 🧱 Project Structure

      lib
      ├── components
      │   ├── common_button.dart
      │   ├── insurance_grid.dart
      │   ├── loan_grid.dart
      │   ├── offer_banner.dart
      │   ├── section_header.dart
      │   └── small_card.dart
      ├── constants
      │   ├── app_assets.dart
      │   ├── app_colors.dart
      │   └── app_strings.dart
      ├── data
      │   └── repositories
      │   │   └── dashboard_repository.dart
      ├── main.dart
      ├── models
      │   ├── insurance_item_model.dart
      │   ├── loan_item_model.dart
      │   └── offer_model.dart
      ├── routes
      │   └── app_routes.dart
      ├── screens
      │   └── home_view.dart
      ├── theme
      │   └── app_theme.dart
      └── utils
      │   └── helpers.dart

  ---


## ScreenShots/Demo

[Drive Link](https://drive.google.com/drive/folders/1AWD3RutW2UZyRcL_fE8IA3VVwRjqMfii?usp=sharing)
<img src="![WhatsApp Image 2025-11-01 at 00 16 23_1a9bcbb7](https://github.com/user-attachments/assets/72c8bacc-4846-4def-9963-d4ff5f383333)
" alt="Screenshot 1" width="300"/>
<img src="![WhatsApp Image 2025-11-01 at 00 16 22_27e01049](https://github.com/user-attachments/assets/cf5361f1-170e-49eb-9788-3c80cacc4896)
" alt="Screenshot 2" width="300"/>
<img src="![WhatsApp Image 2025-11-01 at 00 16 22_fa9d262d](https://github.com/user-attachments/assets/026cb7b6-6ad4-4ba7-8435-db0050593843)
" alt="Screenshot 3" width="300"/>

---
## **👨‍💻** **Author**

Manish Kumar Sharma

[📧 Email](mailto:your-mksharma256001@gmail.com) | [💼 LinkedIn](https://www.linkedin.com/in/mks001/) | [🌐 GitHub](https://github.com/Manish123Sharma)

---

##  📜 License

✅ This README includes:
- Features  
- Tech stack  
- Screenshots section
- Setup steps  
- API reference  
- Future improvements  
