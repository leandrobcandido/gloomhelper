import '../models/player_attack_card.dart';
import 'attack_card_repository.dart';

class PlayerAttackCardRepository { 

  static List<PlayerAttackCard> getList(String character) {
    List<PlayerAttackCard> playerAttackCardList = [];

    if (character == 'voidwarden') {
      AttackCardRepository.mapVoidwarden.forEach((key, attackCard) {
        playerAttackCardList.add(
          PlayerAttackCard(number: attackCard.number, quantity: attackCard.quantity)
        );
      });
    } else if (character == 'redGuard') {
      AttackCardRepository.mapRedGuard.forEach((key, attackCard) {
        playerAttackCardList.add(
          PlayerAttackCard(number: attackCard.number, quantity: attackCard.quantity)
        );
      });
    } else if (character == 'hatchet') {
      AttackCardRepository.mapHatchet.forEach((key, attackCard) {
        playerAttackCardList.add(
          PlayerAttackCard(number: attackCard.number, quantity: attackCard.quantity)
        );
      });
    } else if (character == 'demolitionist') {
      AttackCardRepository.mapDemolitionist.forEach((key, attackCard) {
        playerAttackCardList.add(
          PlayerAttackCard(number: attackCard.number, quantity: attackCard.quantity)
        );
      });
    }

    return playerAttackCardList;
  }
  
}