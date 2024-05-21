# 📱 Plarfrom_converter_app 📱 

### 1. Platform-Specific Code and Plugins
Platform Channels:

* *Android* : Flutter uses Java/Kotlin for native Android code. Developers can invoke Android-specific APIs and use Android SDK functionalities through platform channels.
* *iOS* : Flutter uses Objective-C/Swift for native iOS code. Similarly, developers can call iOS-specific APIs using platform channels.
* *Plugins* :Plugins might have different implementations for Android and iOS. When integrating a plugin, you might notice separate setup steps and configuration for each platform.
### 2. UI and Design Guidelines
Material Design vs. Cupertino:

* *Android*: Typically follows Material Design guidelines, which is Google's design language for Android apps. Flutter provides a rich set of Material widgets.
* *iOS*: Uses Cupertino widgets that mimic Apple's iOS design guidelines, ensuring the app feels native on iOS devices.

Scaffolding:

* *Android*: Uses Scaffold widget to implement basic Material Design layout structure.
* *iOS*: Uses CupertinoPageScaffold for creating basic layout structure in accordance with Cupertino design.

### 3. Build and Deployment
Build Process:

* *Android*: Builds with Gradle, and the output is an APK (Android Package) or AAB (Android App Bundle).
* *iOS*: Uses Xcode and outputs an IPA (iOS App Archive). This process requires a macOS environment for development and deployment due to Xcode dependency.

Deployment:

* *Android*: Apps are distributed through Google Play Store or directly as APKs/AABs.
* *iOS*: Apps are distributed through the Apple App Store, requiring a review process and adherence to Apple's guidelines.

### 4. Development and Testing
Emulators and Simulators:

* *Android*: Android Studio provides an Android Emulator with various device configurations.
* *iOS*: Xcode provides an iOS Simulator for testing on different iPhone and iPad models.

Hot Reload and Hot Restart:
* Both platforms support Flutter’s hot reload and hot restart features, but the speed and performance might slightly vary due to differences in the underlying systems.

### 5. Platform-Specific Features and Permissions
Permissions:

* *Android*: Permissions are managed in the AndroidManifest.xml file. Runtime permissions also need to be handled in code for versions Marshmallow (API level 23) and above.
* *iOS*: Permissions are managed in the Info.plist file, and you need to provide usage descriptions for accessing certain features like the camera, location, etc.

Background Services:

* *Android*: More flexibility with background services and jobs, but requires careful handling of battery optimization and Doze mode.
* *iOS*: More restrictive with background tasks, and specific modes need to be enabled for background processing (like background fetch, push notifications).

### 6. User Interaction and Navigation
Back Navigation:

* *Android*: Physical back button handling needs to be managed, as Android devices typically have a dedicated back button.
* *iOS*: Navigation is usually managed through the navigation bar, with no physical back button. Swipe gestures are also common for back navigation.

Gestures:

* Android and iOS: Flutter provides a unified way to handle gestures, but certain platform-specific gestures might need custom handling.

### 7. Platform-Specific APIs and SDKs
* *Android*:Provides APIs for features like Google Play Services, Android-specific hardware interactions, etc.
* *iOS*:Provides APIs for iOS-specific features like ARKit, iCloud, and integration with other Apple services.

## Android Platfrom


<p align = 'center'>
  <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/a759e58b-058b-495a-b4b2-bc2c6f0deb00' width = 250>
    <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/b922a8db-fa61-41d2-a5cb-d46a6b4d24cc' width = 250>
      <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/39a17fdf-43a1-4de4-b231-b2962ad0e1b3' width = 250>
        <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/64dde52c-2369-4eb5-858f-a31a66d40e26' width = 250>


</p>



## IOS Platfrom


<p align = 'center'>
    <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/327e144a-4bd8-4f51-a457-48eb888c8fc2' width = 250>
    <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/413e6425-bff4-4512-ae17-356da7bc205d' width = 250>
    <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/d85cc247-0d10-482a-8059-273a04a177ae' width = 250>
    <img src='https://github.com/DarshanPatel311/Plarfrom_Converter_App/assets/143177575/96bea032-888b-4b25-b28b-790fa1b6810d' width = 250>
</p>
<a href='https://github.com/DarshanPatel311/Plarfrom_Converter_App/tree/master/lib' align = 'center'>👉 📱  Go to dart file 📱  👈</a>


## Video
<video src='' align = 'center'>
