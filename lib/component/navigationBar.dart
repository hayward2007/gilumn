import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../component/setting.dart';

class NavigationBarButtonID {
  static const int home = 0;
  static const int walk = 1;
  static const int community = 2;
  static const int profile = 3;
}

class CurrentPageIDController extends GetxController {
  RxInt currentPageID = 0.obs;
  void setCurrentPageID(int id) {
    currentPageID.value = id;
  }
}

class GilumNavigationBar extends StatefulWidget {
  const GilumNavigationBar({Key? key}) : super(key: key);
  @override
  createState() => _GilumNaviGationBarState();
}

class _GilumNaviGationBarState extends State<GilumNavigationBar>
    with TickerProviderStateMixin {
  late final List<AnimationController> animationController = [
    AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300)),
    AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300)),
    AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300)),
    AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
  ];
  late final List<Animation<double>> animation = [
    Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController[0], curve: Curves.easeInOutQuint)),
    Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController[1], curve: Curves.easeInOutQuint)),
    Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController[2], curve: Curves.easeInOutQuint)),
    Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController[3], curve: Curves.easeInOutQuint))
  ];
  @override
  void dispose() {
    for (var listElement in animationController) {
      listElement.dispose();
    }
    super.dispose();
  }

  var currentPageIDController = Get.find<CurrentPageIDController>();
  // var currentPageIDController = Get.put(CurrentPageIDController());

  Widget navigationBarButton(
      BuildContext context, String title, IconData icon, int id) {
    return AnimatedBuilder(
      animation: animationController[id],
      builder: (BuildContext context, Widget? child) {
        return ElevatedButton(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => Setting.grade1.withOpacity(1)),
            shadowColor: MaterialStateColor.resolveWith(
                (states) => Setting.grade1.withOpacity(0)),
          ),
          onPressed: () async {
            await animationController[id].forward();
            currentPageIDController.setCurrentPageID(id);
            await Future.delayed(const Duration(milliseconds: 100));
            await animationController[id].reverse();
          },
          child: Column(
            children: [
              Obx(
                () => Container(
                  transform: Matrix4.translationValues(
                      0, -animation[id].value * 60, 0),
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Transform.scale(
                    scale: animation[id].value + 1,
                    child: AnimatedCrossFade(
                      duration: const Duration(milliseconds: 100),
                      firstChild: Icon(
                        icon,
                        size: 28,
                        fill: 1,
                        color: Setting.baseColor,
                      ),
                      secondChild: Icon(
                        icon,
                        size: 28,
                        fill: 0,
                        color: Setting.grade5,
                      ),
                      crossFadeState:
                          currentPageIDController.currentPageID.value == id
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                    ),
                  ),
                ),
              ),
              Obx(
                () => AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 100),
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "SUIT",
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.24,
                    color: currentPageIDController.currentPageID.value == id
                        ? Setting.baseColor
                        : Setting.grade5,
                  ),
                  child: Text(title),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  // );
// }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Setting.grade3, width: 2, style: BorderStyle.solid),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navigationBarButton(
              context, "홈", Symbols.home_rounded, NavigationBarButtonID.home),
          navigationBarButton(context, "산책", Symbols.podiatry_rounded,
              NavigationBarButtonID.walk),
          navigationBarButton(context, "커뮤니티", Symbols.workspaces_rounded,
              NavigationBarButtonID.community),
          navigationBarButton(context, "프로필", Symbols.face_5_rounded,
              NavigationBarButtonID.profile),
        ],
      ),
    );
  }
}
