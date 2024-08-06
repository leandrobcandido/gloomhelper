import '../models/player_ability_card.dart';
import 'ability_card_repository.dart';

class PlayerAbilityCardRepository { 

  static List<PlayerAbilityCard> getList(String character) {
    List<PlayerAbilityCard> playerAbilityCardList = [];

    if (character == 'voidwarden') {
      AbilityCardRepository.mapVoidwarden.forEach((key, abilityCard) {
        playerAbilityCardList.add(
          PlayerAbilityCard(number: abilityCard.number, available: abilityCard.available)
        );
      });
    } else if (character == 'redGuard') {
      AbilityCardRepository.mapRedGuard.forEach((key, abilityCard) {
        playerAbilityCardList.add(
          PlayerAbilityCard(number: abilityCard.number, available: abilityCard.available)
        );
      });
    } else if (character == 'hatchet') {
      AbilityCardRepository.mapHatchet.forEach((key, abilityCard) {
        playerAbilityCardList.add(
          PlayerAbilityCard(number: abilityCard.number, available: abilityCard.available)
        );
      });
    } else if (character == 'demolitionist') {
      AbilityCardRepository.mapDemolitionist.forEach((key, abilityCard) {
        playerAbilityCardList.add(
          PlayerAbilityCard(number: abilityCard.number, available: abilityCard.available)
        );
      });
    }

    return playerAbilityCardList;
  }
  
}