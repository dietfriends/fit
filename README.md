# Fit Plugin

Flutter plugin for health and fitness app. Wraps HealthKit on iOS, GoogleFit on Android and SamsungHealth on Android.


[![codecov](https://codecov.io/gh/dietfriends/fit/branch/main/graph/badge.svg?token=9LZIZBPAFJ)](https://codecov.io/gh/dietfriends/fit)

## Getting Started

```yaml
fit: any
```

### Android - Google Fit
Follow the guide at https://developers.google.com/fit/android/get-api-key


Enable Fitness API and obtain an OAuth 2.0 client ID.

### Android - Samsung Health
TBD

### iOS - Apple HealthKit

Step 1: Append the `Info.plist` with the following 2 entries

```
<key>NSHealthShareUsageDescription</key>
<string>We will sync your data with the Apple Health app to give you better insights</string>
<key>NSHealthUpdateUsageDescription</key>
<string>We will sync your data with the Apple Health app to give you better insights</string>
```

Step 2: [Enable "HealthKit" inside the "Capabilities" tab.](https://developer.apple.com/documentation/healthkit/setting_up_healthkit)


## Usage

### Check Permission

```dart
await Fit.checkPermission();

```


## Develop

### Get dependencies
```bash
flutter pub get
```

### Generate Protobuf 

```bash
tool/gen.sh
```

### Generate Pigeon

```bash
tool/pigeon.sh
```

### Run Test

```bash
tool/test.sh
```