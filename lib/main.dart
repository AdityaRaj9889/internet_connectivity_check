import 'package:flutter/material.dart';
import 'package:internet_connectivity_check/providers/network_provider.dart';
import 'package:internet_connectivity_check/views/home_screen.dart';
import 'package:internet_connectivity_check/views/no_internet_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => NetworkProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'internet_connectivity_check',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            Consumer<NetworkProvider>(
              builder: (context, networkProvider, child) {
                return networkProvider.isOnline
                    ? const SizedBox()
                    : const NoInternetScreen();
              },
            ),
          ],
        );
      },
    );
  }
}
