import 'package:flutter/material.dart';
import '../component/setting.dart';
import 'package:material_symbols_icons/symbols.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Setting.grade2,
        shadowColor: Colors.transparent,
        title: Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Stack(alignment: Alignment.center, children: [
            Container(
              height: 44,
              width: 153,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                    color: Setting.grade3, width: 1, style: BorderStyle.solid),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: SizedBox(
                width: 105,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Symbols.near_me_rounded,
                      color: Setting.baseColor,
                      size: 20,
                      fill: 1,
                    ),
                    Text(
                      "안산시 단원구",
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: -0.28,
                        color: Setting.grade9,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "길음",
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: -1.12,
                        color: Setting.grade10,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        letterSpacing: -1.12,
                        color: Setting.baseColor,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
      body: Container(
        color: Setting.grade2,
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 24, right: 24),
        // child: const Text("오늘의 산책")
      ),
    );
  }
}
