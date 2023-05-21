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
        return macos;
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
    apiKey: 'AIzaSyAUsz78A-yiGJTqKbnT0xULuyO7tKssIAM',
    appId: '1:180576682756:web:4cbe956d14c3f5712fc651',
    messagingSenderId: '180576682756',
    projectId: 'parcialbd-4256d',
    authDomain: 'parcialbd-4256d.firebaseapp.com',
    storageBucket: 'parcialbd-4256d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBKpbFHykR9FvgpYs3PD8lIMNDoPf2CQo',
    appId: '1:180576682756:android:83b3db9a854448d12fc651',
    messagingSenderId: '180576682756',
    projectId: 'parcialbd-4256d',
    storageBucket: 'parcialbd-4256d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTc9CSaUMa5PyTNlXQK2YwQCFTVoC6I-0',
    appId: '1:180576682756:ios:c1101087e10af3692fc651',
    messagingSenderId: '180576682756',
    projectId: 'parcialbd-4256d',
    storageBucket: 'parcialbd-4256d.appspot.com',
    iosClientId: '180576682756-rr0ecphdlt8b13th0m6d4m7q2jmjspfm.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterParcial42524572019',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTc9CSaUMa5PyTNlXQK2YwQCFTVoC6I-0',
    appId: '1:180576682756:ios:c1101087e10af3692fc651',
    messagingSenderId: '180576682756',
    projectId: 'parcialbd-4256d',
    storageBucket: 'parcialbd-4256d.appspot.com',
    iosClientId: '180576682756-rr0ecphdlt8b13th0m6d4m7q2jmjspfm.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterParcial42524572019',
  );
}
