import 'package:flutter/material.dart';
import 'package:house_app/screens/home_view.dart';
import 'package:house_app/screens/homes.dart';

import 'screens/room_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homes(),
      routes: {
        HomeView.routeName: (context) => HomeView(),
        RoomView.routeName: (context) => RoomView(),
      },
    );
  }
}
