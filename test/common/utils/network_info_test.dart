import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_tdd_q/common/utils/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late Connectivity _connectivity;
  late NetworkInfo _networkInfo;

  setUp(() {
    _connectivity = MockConnectivity();
    _networkInfo = ConnectivityNetworkInfo(_connectivity);
  });

  group('connectivity', () {
    test('device is online', () async {
      when(_connectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);

      _networkInfo.isConnected.then((value) => true);
      verify(_connectivity.checkConnectivity());
    });
    test('device is offline', () async {
      when(_connectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.none);
      _networkInfo.isConnected.then((value) => false);
      verify(_connectivity.checkConnectivity());
    });
  });
}
