import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBejIYgnJ6ojlCDWfFmU7Rv06knqsTVr6E",
            authDomain: "bookingapp-425f9.firebaseapp.com",
            projectId: "bookingapp-425f9",
            storageBucket: "bookingapp-425f9.appspot.com",
            messagingSenderId: "417903646412",
            appId: "1:417903646412:web:9b82d16f382f6cbac75469"));
  } else {
    await Firebase.initializeApp();
  }
}
