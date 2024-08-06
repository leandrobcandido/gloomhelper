import 'package:isar/isar.dart';
part 'player_perk.g.dart';

@collection
class PlayerPerk {
  Id id = Isar.autoIncrement;
  int number;
  bool unlocked;

  PlayerPerk({
    required this.number,
    this.unlocked = false,
  });
}