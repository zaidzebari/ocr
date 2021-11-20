import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_recognition/screens/text_recognition_page.dart';

import 'text_recognition_provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Text('Welcome Page'),
            ),
            TextButton(
                onPressed: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextRecognitionPage()));
                  //here to print what we get as list, with index we read one by one
                  print(
                      Provider.of<TextRecognitionState>(context, listen: false)
                          .data!
                          .text
                          .split("\n"));
                },
                child: const Text("goto ocr page")),
          ],
        ),
      ),
    );
  }
}
