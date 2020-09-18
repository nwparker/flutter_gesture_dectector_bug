import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Bug Reproduction',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () => print("onTap"),
        onDoubleTap: () => print("onDoubleTap"),
        onScaleStart: (_) => print("onScaleStart"),
        onScaleEnd: (_) => print("onScaleEnd"),
        child: UiKitView(viewType: "dummyView", onPlatformViewCreated: (int i) => print("UiKitView dummyView created"))
    );
  }
}
