import 'package:flutter/material.dart';
import 'package:house_app/models/containable.dart';

import '../models/item.dart';

class ItemCard extends StatelessWidget {
  Containable item;
  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.name),
      ),
    );
  }
}
