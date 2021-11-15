import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final height = 10.0.obs;
  final duration = 10.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  void onStartScroll(ScrollMetrics metrics) {
    height.value = 10.0;
  }

  void onUpdateScroll(ScrollMetrics metrics) {
    if(height.value == 30.0)
      return;
    height.value = 30.0;
  }

  void onEndScroll(ScrollMetrics metrics) {
    height.value = 10.0;
  }

}
