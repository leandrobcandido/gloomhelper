import 'package:isar/isar.dart';
part 'player_battle_goal.g.dart';

@collection
class PlayerBattleGoal {
  Id id = Isar.autoIncrement;
  bool checkMark1;
  bool checkMark2;
  bool checkMark3;

  PlayerBattleGoal({
    this.checkMark1 = false,
    this.checkMark2 = false,
    this.checkMark3 = false
  });
}