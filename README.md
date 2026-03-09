# Ahmed Essam - Mobile Developer Portfolio

A modern, responsive portfolio website built with Flutter for web deployment. Showcases mobile development skills, projects, and experience.

## 🚀 Features

- **Modern Design**: Clean, professional layout with smooth animations
- **Responsive**: Optimized for all screen sizes
- **Fast**: Built with Flutter for optimal performance
- **SEO Friendly**: Web-optimized for search engines
- **GitHub Pages Ready**: Easy deployment to GitHub Pages

## 🛠️ Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **Deployment**: GitHub Pages
- **Styling**: Material Design 3

## 📱 Sections

- **Hero Section**: Eye-catching introduction with profile image
- **About**: Personal introduction and key skills
- **Skills**: Technical skills with proficiency indicators
- **Projects**: Featured mobile app projects
- **Contact**: Social links and contact information

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0+)
- Dart SDK
- Web support enabled: `flutter config --enable-web`

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/portfolio.git
cd portfolio
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app locally:
```bash
flutter run -d chrome
```

### Build for Production

```bash
flutter build web
```

The built files will be in the `build/web` directory.

## 📦 Deployment to GitHub Pages

1. Create a new repository on GitHub
2. Push your code to the repository
3. Go to repository Settings > Pages
4. Select "Deploy from a branch"
5. Choose "gh-pages" branch (or create it)
6. Upload the contents of `build/web` to the gh-pages branch

Alternatively, use GitHub Actions for automated deployment.

## 🎨 Customization

### Personal Information
Edit the following in `lib/main.dart`:
- Name and title
- Profile image URL
- About section text
- Skills and proficiency levels
- Project details
- Contact information

### Colors
Modify the color scheme in the `ThemeData`:
```dart
colorScheme: ColorScheme.fromSeed(
  seedColor: const Color(0xFF6366F1), // Change this color
  brightness: Brightness.light,
),
```

### Content
Update project cards, skills, and contact links to match your actual work and information.

## 📱 Mobile Development Focus

This portfolio highlights:
- Flutter expertise
- Cross-platform development
- Android & iOS development
- Firebase integration
- Modern app architectures

## 🤝 Contributing

Feel free to fork this project and customize it for your own portfolio!

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 📞 Contact

- **Email**: your.email@example.com
- **LinkedIn**: [Your LinkedIn](https://linkedin.com/in/yourprofile)
- **GitHub**: [Your GitHub](https://github.com/yourusername)

---

Built with ❤️ using Flutter