import 'package:isar/isar.dart';
part 'player_ability_card.g.dart';

@collection
class PlayerAbilityCard {
  Id id = Isar.autoIncrement;
  int number;
  bool available;

  PlayerAbilityCard({
    required this.number,
    this.available = false,
  });
}