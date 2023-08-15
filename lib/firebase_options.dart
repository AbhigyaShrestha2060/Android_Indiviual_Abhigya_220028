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
    apiKey: 'AIzaSyDNxE6oWeutGzpVkDoZGQq9EMs36FU2w4s',
    appId: '1:244656018768:web:49139c9010740010704855',
    messagingSenderId: '244656018768',
    projectId: 'sharkmart-c53bc',
    authDomain: 'sharkmart-c53bc.firebaseapp.com',
    storageBucket: 'sharkmart-c53bc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5ormrRLcB-AKW8gfD0bZLt8TY-Sd_yjs',
    appId: '1:244656018768:android:4ccdeadcb0315916704855',
    messagingSenderId: '244656018768',
    projectId: 'sharkmart-c53bc',
    storageBucket: 'sharkmart-c53bc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkx2-37UI_-BxxMElhqEeFT8TwA3zjzXQ',
    appId: '1:244656018768:ios:d1c35dafc1eb0dad704855',
    messagingSenderId: '244656018768',
    projectId: 'sharkmart-c53bc',
    storageBucket: 'sharkmart-c53bc.appspot.com',
    androidClientId: '244656018768-k69svj2vfrq6965k1u46q2mbjf882p1t.apps.googleusercontent.com',
    iosClientId: '244656018768-ondj7qfhr6q5vrgnmm3g2sf0l3p906k9.apps.googleusercontent.com',
    iosBundleId: 'com.example.emartApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCkx2-37UI_-BxxMElhqEeFT8TwA3zjzXQ',
    appId: '1:244656018768:ios:d1c35dafc1eb0dad704855',
    messagingSenderId: '244656018768',
    projectId: 'sharkmart-c53bc',
    storageBucket: 'sharkmart-c53bc.appspot.com',
    androidClientId: '244656018768-k69svj2vfrq6965k1u46q2mbjf882p1t.apps.googleusercontent.com',
    iosClientId: '244656018768-ondj7qfhr6q5vrgnmm3g2sf0l3p906k9.apps.googleusercontent.com',
    iosBundleId: 'com.example.emartApp',
  );
}