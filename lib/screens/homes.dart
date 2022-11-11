import 'package:flutter/material.dart';
import 'package:house_app/models/container.dart';
import 'package:house_app/models/item.dart';
import 'package:house_app/screens/home_view.dart';

import '../providers/house.dart';

class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    List<House> homes = [
      House("Main Home", rooms: [
        Receptacle("Living Room", items: [
          Item("Chair"),
          Receptacle("Drawers", items: [Item("Pages")]),
        ]),
        Receptacle("Kitchen", items: [
          Item("Table"),
          Item("Chair"),
          Receptacle("Pantry", items: [Item("Food")]),
        ]),
      ]),
      House("Cabin", rooms: [
        Receptacle("Main Room"),
        Receptacle("Kitchen"),
      ]),
      House("Shed", rooms: [
        Receptacle("Main Room"),
      ]),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Homes"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(homes[index].name),
            onTap: () {
              Navigator.pushNamed(context, HomeView.routeName,
                  arguments: homes[index]);
            },
          ),
        ),
        itemCount: homes.length,
      ),
    );
  }
}
