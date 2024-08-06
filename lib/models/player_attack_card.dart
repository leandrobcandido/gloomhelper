import 'package:isar/isar.dart';
part 'player_attack_card.g.dart';

@collection
class PlayerAttackCard {
  Id id = Isar.autoIncrement;
  int number;
  int quantity;

  PlayerAttackCard({
    required this.number,
    required this.quantity,
  });
}