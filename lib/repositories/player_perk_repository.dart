import '../models/player_perk.dart';
import 'perk_repository.dart';

class PlayerPerkRepository {

  static List<PlayerPerk> getList(String character) {
    List<PlayerPerk> playerPerkList = [];

    if (character == 'voidwarden') {
      PerkRepository.mapVoidwarden.forEach((key, perk) {
        playerPerkList.add(
          PlayerPerk(number: perk.number)
        );
      });
    } else if (character == 'redGuard') {
      PerkRepository.mapRedGuard.forEach((key, perk) {
        playerPerkList.add(
          PlayerPerk(number: perk.number)
        );
      });
    } else if (character == 'hatchet') {
      PerkRepository.mapHatchet.forEach((key, perk) {
        playerPerkList.add(
          PlayerPerk(number: perk.number)
        );
      });
    } else if (character == 'demolitionist') {
      PerkRepository.mapDemolitionist.forEach((key, perk) {
        playerPerkList.add(
          PlayerPerk(number: perk.number)
        );
      });
    }

    return playerPerkList;
  }
  
}