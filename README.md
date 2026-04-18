#📱 Flutter Calculator Clone

A modern, fully functional calculator application built with Flutter. This project replicates a professional calculator experience with a clean dark-themed UI and real-time mathematical expression evaluation.

## ✨ Features

- **🔢 Real-time Evaluation**: Results update dynamically as you type your expression.
- **🧠 Algebraic Logic**: Correctly handles PEMDAS/BODMAS rules using the `math_expressions` package.
- **🧩 Modular UI**: Built with reusable custom components (like `MyButton`) to ensure clean and maintainable code.
- **🧹 Quick Controls**: Includes `AC` (All Clear) to reset and `DEL` (Backspace) to fix mistakes easily.
- **🎨 Modern Design**: A high-contrast, dark-themed aesthetic optimized for clarity and mobile usability.
- **📱 Platform Ready**: Optimized for both Android and iOS devices.

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **Math Engine**: [math_expressions](https://pub.dev/packages/math_expressions)
- **CI/CD**: [GitHub Actions](https://github.com/features/actions) for automated APK and iOS IPA releases.

## 🚀 Automation & CI/CD

This repository includes a sophisticated **GitHub Actions** workflow (`main.yml`) that:
- **Builds**: Automatically generates production-ready Android APKs and iOS IPAs on every push.
- **Releases**: Publishes a new version to the "Releases" tab with attached build artifacts.
- **Node 24 Ready**: Future-proofed using the latest runner environment settings.
