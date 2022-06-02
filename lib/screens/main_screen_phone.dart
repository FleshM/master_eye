import 'package:flutter/material.dart';
import 'package:master_eye/main.dart';
import 'package:master_eye/screens/cam_screen.dart';


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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 125,
                    height: 60,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.67,
                    child: CameraScreen()
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        showDialog(context: context,
                            builder: (dialog) => AlertDialog(
                              title: const Text("Ой..."),
                              content: const Text("Функция недоступна. Следите за обновлениями!"),
                              elevation: 20.0,
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'OK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                      padding: const EdgeInsets.all(0.0),
                      elevation: 3,
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF3FBBFE),
                              Color(0xFFA541FF),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 325.0, maxHeight: 75.0),
                          alignment: Alignment.center,
                          child: const Text(
                            'Меню',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ) ,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

