import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:customer_app/core/network_checker/uber_no_network_widget.dart';
import 'package:get/get.dart';

class UberNetWorkStatusChecker extends GetxController {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  var isNetworkAvl = false.obs;

  updateConnectionStatus() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        Get.dialog(const UberNoInterNetWidget());
      } else {
        isNetworkAvl.value = true;
        bool? isDialogOpen = Get.isDialogOpen;
        if (isDialogOpen == true) {
          Get.back();
        }
      }
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
}
