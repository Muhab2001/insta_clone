// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDUfJqx0R7M9wzbS2bVKDoLe3-Y8KvXEoQ',
    appId: '1:462139345349:web:02dc2b81af6c4a6f2623ac',
    messagingSenderId: '462139345349',
    projectId: 'insta-clone-cf9e4',
    authDomain: 'insta-clone-cf9e4.firebaseapp.com',
    storageBucket: 'insta-clone-cf9e4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIAVoH_OH6CwF1DQmWvwmIThjCpvGjp0w',
    appId: '1:462139345349:android:9f55b74c05ba2b0f2623ac',
    messagingSenderId: '462139345349',
    projectId: 'insta-clone-cf9e4',
    storageBucket: 'insta-clone-cf9e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0PwtVrUkZK98gK4XXPk-MgMmvfRgr4iE',
    appId: '1:462139345349:ios:792fdd5e2d8bb03e2623ac',
    messagingSenderId: '462139345349',
    projectId: 'insta-clone-cf9e4',
    storageBucket: 'insta-clone-cf9e4.appspot.com',
    iosClientId: '462139345349-uhtiqcac3ttljkks010e1k3d1drm8f4p.apps.googleusercontent.com',
    iosBundleId: 'com.example.instaclone',
  );
}
