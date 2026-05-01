# Stitch Mawisa Medical Practice App

This repository contains the application codebase for the Stitch Mawisa Medical Practice.

## Project Structure

* **`vital_core_app/`**: This is the primary **Flutter application** directory containing the source code for the mobile/web app.
* **`stitch_mawisa_medical_practice_app/`**: Contains the initial HTML/CSS design files and static assets that the Flutter app was based upon.

## Running the Application

To run the application, navigate to the Flutter project directory:

```bash
cd vital_core_app
flutter pub get
flutter run
```

*For more detailed instructions, see the [Flutter App README](./vital_core_app/README.md).*

---

### Note on GitHub Language Configuration
Since Flutter applications are written in Dart, GitHub's language detection will correctly identify this repository primarily as a **Dart** project.
- If you are setting up CI/CD (like **GitHub Actions**), be sure to search for and use **Flutter** workflows rather than standard Dart workflows, as Flutter requires its own specific SDK setup.
