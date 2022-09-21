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
    apiKey: 'AIzaSyDFBrIqaHZmCxCj57UKqgb01Go3IdtXCCo',
    appId: '1:755923793109:web:66c22e63404f4329045e5c',
    messagingSenderId: '755923793109',
    projectId: 'whatsapp-backend-b240a',
    authDomain: 'whatsapp-backend-b240a.firebaseapp.com',
    storageBucket: 'whatsapp-backend-b240a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABiMSHkfYttgnvgNyQUmxRiQsjhXBMT-I',
    appId: '1:755923793109:android:d37e5e99a3423ac5045e5c',
    messagingSenderId: '755923793109',
    projectId: 'whatsapp-backend-b240a',
    storageBucket: 'whatsapp-backend-b240a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhja_aN7WYr_yXsftRgixOxVuP8imXW2I',
    appId: '1:755923793109:ios:d3c77282cc7e5125045e5c',
    messagingSenderId: '755923793109',
    projectId: 'whatsapp-backend-b240a',
    storageBucket: 'whatsapp-backend-b240a.appspot.com',
    iosClientId: '755923793109-pbg54qtrgrnuv5d02cuvafedj28c53n5.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhja_aN7WYr_yXsftRgixOxVuP8imXW2I',
    appId: '1:755923793109:ios:d3c77282cc7e5125045e5c',
    messagingSenderId: '755923793109',
    projectId: 'whatsapp-backend-b240a',
    storageBucket: 'whatsapp-backend-b240a.appspot.com',
    iosClientId: '755923793109-pbg54qtrgrnuv5d02cuvafedj28c53n5.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappUi',
  );
}