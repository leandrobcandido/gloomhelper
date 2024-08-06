import '../models/player_battle_goal.dart';

class PlayerBattleGoalRepository {

  static List<PlayerBattleGoal> getList() {
    List<PlayerBattleGoal> playerBattleGoalList = [];

    for (var i = 0; i < 6 ; i++) {
      playerBattleGoalList.add(PlayerBattleGoal());
    }

    return playerBattleGoalList;
  }
  
}