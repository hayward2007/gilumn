import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gilumn/component/setting.dart';
import 'package:gilumn/pages/communty.dart';
import 'package:gilumn/pages/home.dart';
import 'package:gilumn/pages/profile.dart';
import 'package:gilumn/pages/walk.dart';
import 'component/navigationBar.dart';

class Index extends StatelessWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context) {
    var currentPageIDController = Get.put(CurrentPageIDController());
    return (Scaffold(
      body: Center(
        child: Obx(() {
          switch (currentPageIDController.currentPageID.value) {
            case NavigationBarButtonID.home:
              return const Home();
            case NavigationBarButtonID.walk:
              return const Walk();
            case NavigationBarButtonID.community:
              return const Community();
            case NavigationBarButtonID.profile:
              return const Profile();
            default:
              return const Home();
          }
        }),
      ),
      backgroundColor: Setting.grade2,
      bottomNavigationBar: const GilumNavigationBar(),
    ));
  }
}
