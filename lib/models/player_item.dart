import 'package:isar/isar.dart';
part 'player_item.g.dart';

@collection
class PlayerItem {
  Id id = Isar.autoIncrement;
  int number;
  bool owned;

  PlayerItem({
    required this.number,
    this.owned = false
  });
}