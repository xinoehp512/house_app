import 'package:flutter/material.dart';
import 'package:house_app/providers/house.dart';
import 'package:house_app/screens/room_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = "/home-view";

  @override
  Widget build(BuildContext context) {
    House house = ModalRoute.of(context)!.settings.arguments as House;
    return Scaffold(
      appBar: AppBar(title: Text(house.name)),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(house.rooms[index].name),
            onTap: () {
              Navigator.pushNamed(context, RoomView.routeName,
                  arguments: house.rooms[index]);
            },
          ),
        ),
        itemCount: house.rooms.length,
      ),
    );
  }
}
