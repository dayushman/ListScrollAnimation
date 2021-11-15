import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/widgets/listItems/animated_item.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            controller.onStartScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollUpdateNotification) {
            controller.onUpdateScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollEndNotification) {
            controller.onEndScroll(scrollNotification.metrics);
          }
          return true;
        },
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext buildContext, int itemCount) {
            return Obx(
              () => AnimatedItem(
                itemCount: itemCount,
                duration: controller.duration.value,
                height: controller.height.value,
              ),
            );
          },
        ),
      ),
    );
  }
}
