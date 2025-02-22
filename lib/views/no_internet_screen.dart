import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      alignment: Alignment.center,
      child: const Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.wifi_off, size: 50, color: Colors.red),
              SizedBox(height: 10),
              Text(
                "No Internet Connection",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Please check your connection and try again.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
