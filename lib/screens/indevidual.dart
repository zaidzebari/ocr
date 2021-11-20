import 'package:flutter/material.dart';
// import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
// import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

class IndividualScreen extends StatefulWidget {
  const IndividualScreen({Key? key}) : super(key: key);

  @override
  _IndividualScreenState createState() => _IndividualScreenState();
}

class _IndividualScreenState extends State<IndividualScreen> {
  // int _ocrCamera = FlutterMobileVision.CAMERA_BACK;
  // String _text = "TEXT";
  // @override
  // void initState() {
  //   super.initState();
  //   FlutterMobileVision.start().then((x) => setState(() {}));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text('Individual Page'),
          ),
          TextButton(onPressed: _read, child: Text("start ocr")),
        ],
      ),
    );
  }

  Future<Null> _read() async {
    // List<OcrText> texts = [];
    // try {
    //   texts = await FlutterMobileVision.read(
    //     camera: _ocrCamera,
    //     waitTap: true,
    //   );

    //   setState(() {
    //     _text = texts[0].value;
    //   });
    // } on Exception {
    //   texts.add(OcrText('Failed to recognize text'));
    // }
  }
}
