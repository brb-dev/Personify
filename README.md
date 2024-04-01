# personify
This is a flutter project developed as a test assignment for Alindor Tech. The project is developed with BLoC state management and with Domain Driven Design.

### Assignment
The assignment doc was keep changing so I made it available inside codebase 'assets/assignment/', the assignment was worked based on the assingment doc present in that location.

### Branching
The branch [main] contains the final code.

### Require
- [Vscode](https://code.visualstudio.com/)
- [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [FVM](https://fvm.app/docs/getting_started/installation)

### Firebase
Firebase has been integrated to this app by following this documentation: [Link](https://firebase.google.com/docs/flutter/setup?platform=ios), As mentioned in documentation, the firebase_options.dart file can be committed to sourcecode and security should be handled through firebase rules. The deepgram and openAI api keys has been stored in remote config.


### Flavors
The app uses 4 flavors, namely:
1. mock
2. dev
3. uat
4. prod
- Flavors are configured for android only.
- Even though we have 4 flavors, we are using only one firebase project as this is a test assignment. In real world, we should have separate firebase and BE for each flavors/environment.
- To test, you should run the prod flavor.

### Setup
1. Install [FVM](https://fvm.app/docs/getting_started/installation)
2. Git clone project
3. Open project with Vscode, check ".fvm/fvm_config.json" file, check the "flutterSdkVersion" inside and use ```fvm use <flutterSdkVersion_you_saw>```
4. Restart vscode

### Auto build json_serializable, freezed, auto_route_generator
```fvm flutter pub run build_runner watch --delete-conflicting-outputs```

### Build app
#### Android
- ```fvm flutter build apk --flavor mock -t lib/main_mock.dart```
- ```fvm flutter build apk --flavor dev -t lib/main_dev.dart```
- ```fvm flutter build apk --flavor uat -t lib/main_uat.dart```
- ```fvm flutter build apk --flavor prod -t lib/main_prod.dart```

### Android SDK Version
Make the below changes to your /personify/android/local.properties
- flutter.minSdkVersion=21

