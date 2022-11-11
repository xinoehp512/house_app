import '../models/container.dart';

class House {
  String name;
  List<Receptacle> rooms;
  House(this.name, {this.rooms = const []});
}
