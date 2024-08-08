Sure! Here’s the `README.md` content:

```markdown
# Assignment for Mobile Engineer - Android

## Objective

The goal of this assignment is to build two Android screens (`ListView` and `DetailsView`) using Flutter. The app will fetch data from an API and display it in a `ListView` widget, and it will also have a `DetailsView` screen. The app is designed to support a dedicated landscape layout for tablets.

## Requirements

- Fetch sample data from [https://api.restful-api.dev/objects](https://api.restful-api.dev/objects).
- Display the fetched data in a `ListView`.
- Implement a `DetailsView` screen that shows detailed information for a selected item.
- Ensure the app has a dedicated landscape layout for tablets.
- You have 2 days to complete this assignment.

## Features

- Fetches data from a RESTful API.
- Displays data in a scrollable `ListView`.
- Allows users to view details of a selected item in a `DetailsView`.
- Optimized for landscape layout on tablets.

## How to Run the App

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.0 or above)
- Android Studio or Visual Studio Code with Flutter and Dart plugins installed.
- An Android emulator or physical device.

### Steps to Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   - **Using Android Studio/VS Code**: Open the project in your IDE and press `F5` or click the run button.
   - **Using Terminal**:
     ```bash
     flutter run
     ```

4. **Build for Android**:
   - **Debug Build**: 
     ```bash
     flutter build apk --debug
     ```
   - **Release Build**:
     ```bash
     flutter build apk --release
     ```

### Test on Tablet

- To test the dedicated landscape layout for tablets, ensure you have a tablet emulator or a physical tablet device.
- Rotate the device/emulator to landscape mode to see the optimized layout.

## Libraries and Tools Used

- **HTTP**: For making API requests to fetch data. [http](https://pub.dev/packages/http)
- **Flutter**: Framework used to build the cross-platform application.
- **Dart**: Language used for writing the Flutter application.



