import 'package:flutter/material.dart';
import 'package:house_app/models/containable.dart';
import 'package:house_app/models/container.dart';
import 'package:house_app/widgets/item_card.dart';

import '../models/item.dart';

class ContainerCard extends StatefulWidget {
  Receptacle receptacle;
  ContainerCard(this.receptacle);

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(widget.receptacle.name),
        children:
            widget.receptacle.items.map((item) => ItemCard(item)).toList(),
      ),
    );
  }
}
