import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'int.dart';
import 'firebase_options.dart';

 Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyAORGklZfv32UDf1dqJF7XCGPZqpxIXkk4",
      appId: "1:281565503870:android:eeecc69327d75e2249932f",
      messagingSenderId:"281565503870",
      projectId:"siaq-12ad9"));
  runApp(App());
}

