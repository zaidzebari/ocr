import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_recognition/screens/text_recognition_provider.dart';
import 'package:text_recognition/screens/welcome.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TextRecognitionState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryTextTheme: const TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
