import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ieatta/app/controller/home.controller.dart';

import './list_item.widget.dart';

class HomeList extends GetWidget<HomeController> {
  final double itemHeight = 150;
  final double itemWidth = Get.width / 2 - 100;

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.users != null
        ? SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 25.0,
                crossAxisSpacing: 25.0,
                childAspectRatio: itemWidth / itemHeight),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListItem(controller.users[index]);
              },
              childCount: controller.users.length,
            ),
          )
        : SliverToBoxAdapter(child: Text("loading...")));
  }
}
