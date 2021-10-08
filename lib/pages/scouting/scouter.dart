import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Scouter extends StatefulWidget {
  const Scouter({Key? key}) : super(key: key);

  @override
  _ScouterState createState() => _ScouterState();
}

class _ScouterState extends State<Scouter> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Scouter"),
      ),
      body: SafeArea(child: Text("Scouter!")),
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }
}
