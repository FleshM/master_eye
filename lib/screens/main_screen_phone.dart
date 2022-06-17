import 'package:flutter/material.dart';
import 'package:master_eye/main.dart';
import 'face_detector_view.dart';


class MainScreenPhone extends StatelessWidget {
  MainScreenPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.9,
                    child: FaceDetectorView()
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

