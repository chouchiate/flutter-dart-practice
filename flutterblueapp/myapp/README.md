# myapp

A Flutter Bluetooth demo project.

## Getting Started

1. Installation - In pubspec.yaml add:
```yaml
flutter_blue: ^0.7.2

```

2. minSdkVersion 16 changes to minSdkVersion 19 at build.gradle

3. Android - In AndroidManifest.xml add:
```xml
<uses-permission android:name="android.permission.BLUETOOTH"/>
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

4. iOS - In Info.plist add:
```xml
<key>NSBluetoothAlwaysUsageDescription</key>
<string>Need BLE permission</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>Need BLE permission</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Need Location permission</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>Need Location permission</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>Need Location permission</string>
```






