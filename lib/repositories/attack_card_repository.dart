import '../models/attack_card.dart';

class AttackCardRepository {

  static Map<int, AttackCard> mapVoidwarden = {
    1: AttackCard(number: 1, imagePath: 'assets/attack_card/voidwarden/+0.png', quantity: 6),
    2: AttackCard(number: 2, imagePath: 'assets/attack_card/voidwarden/+1.png', quantity: 5),
    3: AttackCard(number: 3, imagePath: 'assets/attack_card/voidwarden/+2.png', quantity: 1),
    4: AttackCard(number: 4, imagePath: 'assets/attack_card/voidwarden/-1.png', quantity: 5),
    5: AttackCard(number: 5, imagePath: 'assets/attack_card/voidwarden/-2.png', quantity: 1),
    6: AttackCard(number: 6, imagePath: 'assets/attack_card/voidwarden/dd.png', quantity: 1),
    7: AttackCard(number: 7, imagePath: 'assets/attack_card/voidwarden/nd.png', quantity: 1),
    8: AttackCard(number: 8, imagePath: 'assets/attack_card/voidwarden/+1_dark.png'),
    9: AttackCard(number: 9, imagePath: 'assets/attack_card/voidwarden/+1_ice.png'),
    10: AttackCard(number: 10, imagePath: 'assets/attack_card/voidwarden/+0_heal.png'),
    11: AttackCard(number: 11, imagePath: 'assets/attack_card/voidwarden/+1_heal.png'),
    12: AttackCard(number: 12, imagePath: 'assets/attack_card/voidwarden/+1_poison.png'),
    13: AttackCard(number: 13, imagePath: 'assets/attack_card/voidwarden/+3.png'),
    14: AttackCard(number: 14, imagePath: 'assets/attack_card/voidwarden/+1_curse.png'),
  };

  static Map<int, AttackCard> mapRedGuard = {
    1: AttackCard(number: 1, imagePath: 'assets/attack_card/red_guard/+0.png', quantity: 6),
    2: AttackCard(number: 2, imagePath: 'assets/attack_card/red_guard/+1.png', quantity: 5),
    3: AttackCard(number: 3, imagePath: 'assets/attack_card/red_guard/+2.png', quantity: 1),
    4: AttackCard(number: 4, imagePath: 'assets/attack_card/red_guard/-1.png', quantity: 5),
    5: AttackCard(number: 5, imagePath: 'assets/attack_card/red_guard/-2.png', quantity: 1),
    6: AttackCard(number: 6, imagePath: 'assets/attack_card/red_guard/dd.png', quantity: 1),
    7: AttackCard(number: 7, imagePath: 'assets/attack_card/red_guard/nd.png', quantity: 1),
    8: AttackCard(number: 8, imagePath: 'assets/attack_card/red_guard/+1_extra.png'),
    9: AttackCard(number: 9, imagePath: 'assets/attack_card/red_guard/+2_fire.png'),
    10: AttackCard(number: 10, imagePath: 'assets/attack_card/red_guard/+2_light.png'),
    11: AttackCard(number: 11, imagePath: 'assets/attack_card/red_guard/+1_fire_light.png'),
    12: AttackCard(number: 12, imagePath: 'assets/attack_card/red_guard/+1_shield.png'),
    13: AttackCard(number: 13, imagePath: 'assets/attack_card/red_guard/+1_immobilize.png'),
    14: AttackCard(number: 14, imagePath: 'assets/attack_card/red_guard/+1_wound.png'),
  };

  static Map<int, AttackCard> mapHatchet = {
    1: AttackCard(number: 1, imagePath: 'assets/attack_card/hatchet/+0.png', quantity: 6),
    2: AttackCard(number: 2, imagePath: 'assets/attack_card/hatchet/+1.png', quantity: 5),
    3: AttackCard(number: 3, imagePath: 'assets/attack_card/hatchet/+2.png', quantity: 1),
    4: AttackCard(number: 4, imagePath: 'assets/attack_card/hatchet/-1.png', quantity: 5),
    5: AttackCard(number: 5, imagePath: 'assets/attack_card/hatchet/-2.png', quantity: 1),
    6: AttackCard(number: 6, imagePath: 'assets/attack_card/hatchet/dd.png', quantity: 1),
    7: AttackCard(number: 7, imagePath: 'assets/attack_card/hatchet/nd.png', quantity: 1),
    8: AttackCard(number: 8, imagePath: 'assets/attack_card/hatchet/+2_muddle.png'),
    9: AttackCard(number: 9, imagePath: 'assets/attack_card/hatchet/+1_poison.png'),
    10: AttackCard(number: 10, imagePath: 'assets/attack_card/hatchet/+1_wound.png'),
    11: AttackCard(number: 11, imagePath: 'assets/attack_card/hatchet/+1_immobilize.png'),
    12: AttackCard(number: 12, imagePath: 'assets/attack_card/hatchet/+1_push.png'),
    13: AttackCard(number: 13, imagePath: 'assets/attack_card/hatchet/+0_stun.png'),
    14: AttackCard(number: 14, imagePath: 'assets/attack_card/hatchet/+1_stun.png'),
    15: AttackCard(number: 15, imagePath: 'assets/attack_card/hatchet/+2_air.png'),
    16: AttackCard(number: 16, imagePath: 'assets/attack_card/hatchet/+3.png'),
  };

  static Map<int, AttackCard> mapDemolitionist = {
    1: AttackCard(number: 1, imagePath: 'assets/attack_card/demolitionist/+0.png', quantity: 6),
    2: AttackCard(number: 2, imagePath: 'assets/attack_card/demolitionist/+1.png', quantity: 5),
    3: AttackCard(number: 3, imagePath: 'assets/attack_card/demolitionist/+2.png', quantity: 1),
    4: AttackCard(number: 4, imagePath: 'assets/attack_card/demolitionist/-1.png', quantity: 5),
    5: AttackCard(number: 5, imagePath: 'assets/attack_card/demolitionist/-2.png', quantity: 1),
    6: AttackCard(number: 6, imagePath: 'assets/attack_card/demolitionist/dd.png', quantity: 1),
    7: AttackCard(number: 7, imagePath: 'assets/attack_card/demolitionist/nd.png', quantity: 1),
    8: AttackCard(number: 8, imagePath: 'assets/attack_card/demolitionist/+2_muddle.png'),
    9: AttackCard(number: 9, imagePath: 'assets/attack_card/demolitionist/+0_poison.png'),
    10: AttackCard(number: 10, imagePath: 'assets/attack_card/demolitionist/+2_extra.png'),
    11: AttackCard(number: 11, imagePath: 'assets/attack_card/demolitionist/+2_earth.png'),
    12: AttackCard(number: 12, imagePath: 'assets/attack_card/demolitionist/+2_fire.png'),
    13: AttackCard(number: 13, imagePath: 'assets/attack_card/demolitionist/+0_ad.png'),
  };

  static AttackCard? getAttackCard(String character, int number) {
    AttackCard? attackCard;

    if (character == 'voidwarden') {
      attackCard = mapVoidwarden[number];
    } else if (character == 'redGuard') {
      attackCard = mapRedGuard[number];
    } else if (character == 'hatchet') {
      attackCard = mapHatchet[number];
    } else if (character == 'demolitionist') {
      attackCard = mapDemolitionist[number];
    }

    return attackCard;
  }

}