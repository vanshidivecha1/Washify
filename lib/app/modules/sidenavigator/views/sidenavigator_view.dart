import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sidenavigator_controller.dart';

class SideNavigatorView extends GetView<SideNavigatorController> {
  const SideNavigatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold();
  }
}
