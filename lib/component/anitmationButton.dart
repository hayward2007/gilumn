//애니메이션 첨가된 버튼 만들던 공간

// import 'package:flutter/material.dart';
// import 'package:material_symbols_icons/symbols.dart';
// import 'package:get/get.dart';
// import 'setting.dart';

// class NavigationBarButtonID {
//   static const int home = 0;
//   static const int walk = 1;
//   static const int community = 2;
//   static const int profile = 3;
// }

// class CurrentPageIDController extends GetxController {
//   RxInt currentPageID = 0.obs;
//   void setCurrentPageID(int id) {
//     currentPageID.value = id;
//   }
// }

// class AnimationButton extends StatefulWidget {
//   const AnimationButton({Key? key}) : super(key: key);

//   @override
//   createState() => _AnimationButtonState();
// }

// class _AnimationButtonState extends State<AnimationButton>
//     with TickerProviderStateMixin {
//   late final List<AnimationController> animationController = [
//     AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300)),
//     AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300)),
//     AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300)),
//     AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300))
//   ];
//   late final List<Animation<double>> animation = [
//     Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
//         parent: animationController[0], curve: Curves.easeInOutQuint)),
//     Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
//         parent: animationController[1], curve: Curves.easeInOutQuint)),
//     Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
//         parent: animationController[2], curve: Curves.easeInOutQuint)),
//     Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
//         parent: animationController[3], curve: Curves.easeInOutQuint))
//   ];
//   @override
//   void dispose() {
//     for (var listElement in animationController) {
//       listElement.dispose();
//     }
//     super.dispose();
//   }

//   var controller = Get.put(CurrentPageIDController());

//   Widget navigationBarButton(
//       BuildContext context, String title, IconData icon, int id) {
//     // return GetX<CurrentPageIDController>(builder: (controller) {
//     return Obx(() => ElevatedButton(
//           onPressed: () {
//             controller.setCurrentPageID(id);
//           },
//           child: Text(title),
//           style: ButtonStyle(
//             backgroundColor: controller.currentPageID.value == id
//                 ? MaterialStateColor.resolveWith((states) => Colors.black)
//                 : MaterialStateColor.resolveWith((states) => Colors.white),
//           ),
//         ));
//   }
//   // );
// // }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 105,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(
//             color: Setting.grade3, width: 2, style: BorderStyle.solid),
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           navigationBarButton(
//               context, "홈", Symbols.home_rounded, NavigationBarButtonID.home),
//           navigationBarButton(context, "산책", Symbols.podiatry_rounded,
//               NavigationBarButtonID.walk),
//           navigationBarButton(context, "커뮤니티", Symbols.workspaces_rounded,
//               NavigationBarButtonID.community),
//           navigationBarButton(context, "프로필", Symbols.face_5_rounded,
//               NavigationBarButtonID.profile),
//         ],
//       ),
//     );
//   }
// }
