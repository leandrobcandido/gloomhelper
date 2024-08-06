import 'player_attack_card.dart';
import 'player_battle_goal.dart';
import 'player_ability_card.dart';
import 'player_item.dart';
import 'player_perk.dart';
import 'package:isar/isar.dart';
part 'player.g.dart';

@collection
class Player {
  Id id = Isar.autoIncrement;
  late String name;
  late int level;
  late int gold;
  late int xp;
  late String character;
  final playerItemList = IsarLinks<PlayerItem>();
  final playerAbilityCardList = IsarLinks<PlayerAbilityCard>();
  final playerPerkList = IsarLinks<PlayerPerk>();
  final playerBattleGoalList = IsarLinks<PlayerBattleGoal>();
  final playerAttackCardList = IsarLinks<PlayerAttackCard>();
}