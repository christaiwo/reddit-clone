// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCBnvbKFrkvt7HPx2hh5BBcCB2oiGm_ZjA',
    appId: '1:87004826416:web:2c2f3939405b02e78396f5',
    messagingSenderId: '87004826416',
    projectId: 'reddit-clone-62853',
    authDomain: 'reddit-clone-62853.firebaseapp.com',
    storageBucket: 'reddit-clone-62853.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABv-U34UDPOTr-Ptp53HWZYkDUtd9Y10k',
    appId: '1:87004826416:android:58e8917cb8bc72d88396f5',
    messagingSenderId: '87004826416',
    projectId: 'reddit-clone-62853',
    storageBucket: 'reddit-clone-62853.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLvnnQtm7TB9Eo5E2QWLFaVj9NirQ2m2Y',
    appId: '1:87004826416:ios:0518c527cbe1c52d8396f5',
    messagingSenderId: '87004826416',
    projectId: 'reddit-clone-62853',
    storageBucket: 'reddit-clone-62853.appspot.com',
    iosBundleId: 'com.example.redditClone',
  );
}
