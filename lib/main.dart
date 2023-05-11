import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

void main() => runApp(GetMaterialApp(home: Home()));

const Color appColor = Color.fromRGBO(228, 166, 60, 1);

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: const Text("윤수아 바보"),
      ),
      bottomNavigationBar: navigationBar(context),
    );
  }
}

Widget navigationBar(BuildContext context) {
  return (Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Symbols.home_rounded),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.podiatry_rounded),
            label: '산책',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.workspaces_rounded),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.face_5_rounded),
            label: '프로필',
          ),
        ],
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        selectedItemColor: appColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      )));
}
