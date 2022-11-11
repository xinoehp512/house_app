import 'package:house_app/models/containable.dart';
import 'package:house_app/models/item.dart';

class Receptacle extends Containable {
  List<Containable> items;

  Receptacle(
    String name, {
    this.items = const [],
  }) : super(name, true);

  void addItem(Containable item) {
    items.add(item);
  }

  void removeItem(String name) {
    items.removeWhere((element) => element.name == name);
  }
}
