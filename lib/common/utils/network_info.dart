import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class ConnectivityNetworkInfo implements NetworkInfo {
  final Connectivity _connectivity;

  ConnectivityNetworkInfo(this._connectivity);
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
