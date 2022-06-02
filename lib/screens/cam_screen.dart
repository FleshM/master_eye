import 'dart:math';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> cameraValue;
  bool flash = false;
  bool isCameraFront = true;
  double transform = 0;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraValue = _cameraController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done){
                  return CameraPreview(_cameraController);
                }
                else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          Positioned(
            left: 0,
            bottom: 0,
            child: IconButton(
                icon: Icon(
                  flash ? Icons.flash_on : Icons.flash_off,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    flash = !flash;
                  });
                  flash ? _cameraController.setFlashMode(FlashMode.torch)
                      : _cameraController.setFlashMode(FlashMode.off);
                }),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: IconButton(
                icon: const Icon(
                Icons.flip_camera_ios,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () async {
                setState(() {
                  isCameraFront = !isCameraFront;
                });
                int cameraPos = isCameraFront ? 0 : 1;
                _cameraController = CameraController(
                    cameras[cameraPos], ResolutionPreset.medium);
                cameraValue = _cameraController.initialize();
              }),
          )
        ],
        overflow: Overflow.clip,
      ),
    );
  }
}
