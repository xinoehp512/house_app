import 'package:flutter/material.dart';
import 'package:house_app/models/container.dart';
import 'package:house_app/widgets/container_card.dart';
import 'package:house_app/widgets/item_card.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});
  static const routeName = "/room-view";

  @override
  Widget build(BuildContext context) {
    Receptacle room = ModalRoute.of(context)!.settings.arguments as Receptacle;
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: ListView.builder(
        itemBuilder: (context, index) => room.items[index].isContainer
            ? ContainerCard(room.items[index] as Receptacle)
            : ItemCard(room.items[index]),
        itemCount: room.items.length,
      ),
    );
  }
}
