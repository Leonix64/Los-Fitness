import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-CZ1gQukNU9X_VDPWMEW-gtwi7d7HWZA",
            authDomain: "life-fit1.firebaseapp.com",
            projectId: "life-fit1",
            storageBucket: "life-fit1.appspot.com",
            messagingSenderId: "788095270971",
            appId: "1:788095270971:web:41a3557ad71e893e3c5c1e",
            measurementId: "G-XCDG7YD9RZ"));
  } else {
    await Firebase.initializeApp();
  }
}
