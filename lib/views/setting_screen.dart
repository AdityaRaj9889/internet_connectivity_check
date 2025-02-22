import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9F74EB),
        title: const Text("Setting"),
      ),
      body: const Center(
        child: Text("This is Setting Screen"),
      ),
    );
  }
}
