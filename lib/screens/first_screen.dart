import 'dart:ui';
import 'package:flutter/material.dart';

class FirstScreen  extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 50),
            child:
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Чтобы использовать '),
                    TextSpan(text: 'MasterEye', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        foreground: Paint()..shader = const LinearGradient(
                          colors: [
                            Color(0xFF3FBBFE),
                            Color(0xFF54A2FE),
                            Color(0xFFA541FF),
                            ],
                          ).createShader(const Rect.fromLTWH(0.0, 0.0, 400.0, 100.0))
                        )
                      ),
                    const TextSpan(text: ',\nнеобходимо подключиться к камере:'),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/camera.jpg",
                width: 300,
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 60, 10, 10),
              child:
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 350.0, maxHeight: 70.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Использовать камеру телефона',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child:
                RaisedButton(
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
                                    color: Color(0xFFA541FF),
                                ),
                              ),
                            ),
                          ],

                        ));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 350.0, maxHeight: 70.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Подключиться к внешней камере',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
            )
          ]
        )
      )
    );
  }
}
