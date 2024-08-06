import '../models/player.dart';

class PlayerRepository {  

  static Player getPlayer(String name, String character) {
    return Player()
      ..name = name
      ..level = 1
      ..gold = 0
      ..xp = 0
      ..character = character;
  }
  
}