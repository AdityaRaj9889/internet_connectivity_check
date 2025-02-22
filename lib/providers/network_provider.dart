import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connectivity_check/services/network_service.dart';

class NetworkProvider extends ChangeNotifier {
  final NetworkService _networkService = NetworkService();
  bool _isOnline = false;

  bool get isOnline => _isOnline;

  NetworkProvider() {
    _networkService.connectivityStream
        .listen((List<ConnectivityResult> result) {
      _isOnline = (result.first != ConnectivityResult.none);
      notifyListeners();
    });
  }
}
