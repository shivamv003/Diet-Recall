import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'wrapper2.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyB0EvszawZcBRhXNl-Sioc-8iPLcfmPka8",//  ==   current_key in google-services.json file
          appId: "1:897156325611:android:2ad35209101cc6c2891eae", // ==  mobilesdk_app_id  in google-services.json file
          messagingSenderId: "897156325611", // ==   project_number in google-services.json file
          projectId: "diet-recall-app-e55ab", // ==   project_id   in google-services.json file
        ),
      );
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF325CCC)),
        useMaterial3: true,
      ),
      home: const Wrapper(),
    );
  }
}

class CenteredButtonPage extends StatelessWidget {
  const CenteredButtonPage({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D52B7), // Set the background color here
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            // Define the action to be performed on button press here
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
