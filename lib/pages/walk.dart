import 'package:flutter/material.dart';
import '../component/navigationBar.dart';
import '../component/setting.dart';

class Walk extends StatelessWidget {
  const Walk({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text("산책 페이지"),
    );
  }
}












// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(const MyApp());
// }
 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     _getLocationPermission();

//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     void getPath() async {
//       while (isTracking) {
//         setState(() {
//           _getCurrentLocation();
//           path.add(_currentPosition);
//         });
//         await Future.delayed(const Duration(milliseconds: 1000));
//       }
//     }

//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(
//                 width: 400,
//                 height: 400,
//                 child: CustomPaint(
//                   size: const Size(400, 400),
//                   painter: PathPainter(),
//                 )),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isTracking = !isTracking;
//                     getPath();
//                   });
//                 },
//                 child: Text(isTracking ? "Tracking Stop" : "Tracking Start")),
//             Text(
//                 "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"),
//             Text("LAT: $x, LNG: $y"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Future _getCurrentLocation() async {
//   _currentPosition = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.best,
//       forceAndroidLocationManager: true);
//   x = (_currentPosition.latitude - latitudeOffset) * mapOffset;
//   y = (_currentPosition.longitude - longitudeOffset) * mapOffset;
//   print("location detected");
// }

// Future _getLocationPermission() async {
//   await Geolocator.requestPermission();
// }

// Position _currentPosition = const Position(
//     longitude: 0,
//     latitude: 0,
//     timestamp: null,
//     accuracy: 0,
//     altitude: 0,
//     heading: 0,
//     speed: 0,
//     speedAccuracy: 0);
// // Position _oldPosition = _currentPosition;
// List path = [];
// List<Offset> map = [];
// bool isTracking = false;
// int mapOffset = 200000;
// double latitudeOffset = 37.341;
// double longitudeOffset = 126.831;
// double x = 0;
// double y = 0;

// class PathPainter extends CustomPainter {
//   //좌표는 3자리수 까지 비슷함
//   @override
//   void paint(Canvas canvas, Size size) {
//     // for(var point in path) {
//     //   map.add
//     // }
//     map.add(Offset(x, y));
//     canvas.drawPoints(PointMode.lines, map, Paint()..strokeWidth = 2);
//     // Path map = Path();
//     // map.moveTo(x, y);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
