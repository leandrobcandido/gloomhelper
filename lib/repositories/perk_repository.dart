import 'package:gloomhelper/models/perk_rule.dart';

import '../models/perk.dart';
import 'condition_repository.dart';
import 'element_repository.dart';

class PerkRepository {
  static Map<int, Perk> mapVoidwarden = {
    1: Perk(
      number: 1, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    2: Perk(
      number: 2, 
      description: 'Remova uma carta -2',
      perkRuleList: [PerkRule(number: 5, decrement: 1)]
    ),
    3: Perk(
      number: 3,
      description: 'Substitua uma carta +0 por uma carta +1',
      iconPathList: [ElementRepository.map['dark']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    4: Perk(
      number: 4,
      description: 'Substitua uma carta +0 por uma carta +1',
      iconPathList: [ElementRepository.map['dark']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    5: Perk(
      number: 5,
      description: 'Substitua uma carta +0 por uma carta +1',
      iconPathList: [ElementRepository.map['ice']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    6: Perk(
      number: 6,
      description: 'Substitua uma carta +0 por uma carta +1',
      iconPathList: [ElementRepository.map['ice']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    7: Perk(
      number: 7,
      description: 'Substitua uma carta -1 por uma carta +0 Curar 1 (Aliado)',
      iconPathList: ['assets/heal.svg'],
      perkRuleList: [PerkRule(number: 4, decrement: 1), PerkRule(number: 10, increment: 1)]
    ),
    8: Perk(
      number: 8,
      description: 'Substitua uma carta -1 por uma carta +0 Curar 1 (Aliado)',
      iconPathList: ['assets/heal.svg'],
      perkRuleList: [PerkRule(number: 4, decrement: 1), PerkRule(number: 10, increment: 1)]
    ),
    9: Perk(
      number: 9,
      description: 'Adicione uma carta +1 Curar 1 (Aliado)',
      iconPathList: ['assets/heal.svg'],
      perkRuleList: [PerkRule(number: 11, increment: 1)]
    ),
    10: Perk(
      number: 10,
      description: 'Adicione uma carta +1 Curar 1 (Aliado)',
      iconPathList: ['assets/heal.svg'],
      perkRuleList: [PerkRule(number: 11, increment: 1)]
    ),
    11: Perk(
      number: 11,
      description: 'Adicione uma carta +1 Curar 1 (Aliado)',
      iconPathList: ['assets/heal.svg'],
      perkRuleList: [PerkRule(number: 11, increment: 1)]
    ),
    12: Perk(
      number: 12,
      description: 'Adicione uma carta +1 VENENO',
      iconPathList: [ConditionRepository.map['poison']!.iconPath],
      perkRuleList: [PerkRule(number: 12, increment: 1)]
    ),
    13: Perk(
      number: 13, 
      description: 'Adicione uma carta +3',
      perkRuleList: [PerkRule(number: 13, increment: 1)]
    ),
    14: Perk(
      number: 14,
      description: 'Adicione uma carta +1 MALDIÇÃO',
      iconPathList: [ConditionRepository.map['curse']!.iconPath],
      perkRuleList: [PerkRule(number: 14, increment: 1)]
    ),
    15: Perk(
      number: 15,
      description: 'Adicione uma carta +1 MALDIÇÃO',
      iconPathList: [ConditionRepository.map['curse']!.iconPath],
      perkRuleList: [PerkRule(number: 14, increment: 1)]
    ),
  };

  static Map<int, Perk> mapRedGuard = {
    1: Perk(
      number: 1, 
      description: 'Remova quatro cartas +0',
      perkRuleList: [PerkRule(number: 1, decrement: 4)]
    ),
    2: Perk(
      number: 2, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    3: Perk(
      number: 3, 
      description: 'Remova uma carta -2 e uma carta +1',
      perkRuleList: [PerkRule(number: 5, decrement: 1), PerkRule(number: 2, decrement: 1)]
    ),
    4: Perk(
      number: 4, 
      description: 'Substitua uma carta -1 por uma carta +1',
      perkRuleList: [PerkRule(number: 4, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    5: Perk(
      number: 5, 
      description: 'Substitua uma carta -1 por uma carta +1',
      perkRuleList: [PerkRule(number: 4, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    6: Perk(
      number: 6,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['fire']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    7: Perk(
      number: 7,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['fire']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    8: Perk(
      number: 8,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['light']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 10, increment: 1)]
    ),
    9: Perk(
      number: 9,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['light']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 10, increment: 1)]
    ),
    10: Perk(
      number: 10,
      description: 'Adicione uma carta +1',
      iconPathList: [ElementRepository.map['fire']!.iconPath, ElementRepository.map['light']!.iconPath],
      perkRuleList: [PerkRule(number: 11, increment: 1)]
    ),
    11: Perk(
      number: 11,
      description: 'Adicione uma carta +1',
      iconPathList: [ElementRepository.map['fire']!.iconPath, ElementRepository.map['light']!.iconPath],
      perkRuleList: [PerkRule(number: 11, increment: 1)]
    ),
    12: Perk(
      number: 12,
      description: 'Adicione uma carta +1 Escudo 1',
      iconPathList: ['assets/shield.svg'],
      perkRuleList: [PerkRule(number: 12, increment: 1)]
    ),
    13: Perk(
      number: 13,
      description: 'Adicione uma carta +1 Escudo 1',
      iconPathList: ['assets/shield.svg'],
      perkRuleList: [PerkRule(number: 12, increment: 1)]
    ),
    14: Perk(
      number: 14,
      description: 'Substitua uma carta +0 por uma carta +1 IMOBILIZAR',
      iconPathList: [ConditionRepository.map['immobilize']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 13, increment: 1)]
    ),
    15: Perk(
      number: 15,
      description: 'Substitua uma carta +0 por uma carta +1 FERIMENTO',
      iconPathList: [ConditionRepository.map['wound']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 14, increment: 1)]
    ),
  };

  static Map<int, Perk> mapHatchet = {
    1: Perk(
      number: 1, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    2: Perk(
      number: 2, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    3: Perk(
      number: 3,
      description: 'Substitua uma carta +0 por uma carta +2 CONFUNDIR',
      iconPathList: [ConditionRepository.map['muddle']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    4: Perk(
      number: 4,
      description: 'Substitua uma carta +0 por uma carta +1 VENENO',
      iconPathList: [ConditionRepository.map['poison']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    5: Perk(
      number: 5,
      description: 'Substitua uma carta +0 por uma carta +1 FERIMENTO',
      iconPathList: [ConditionRepository.map['wound']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 10, increment: 1)]
    ),
    6: Perk(
      number: 6,
      description: 'Substitua uma carta +0 por uma carta +1 IMOBILIZAR',
      iconPathList: [ConditionRepository.map['immobilize']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 11, increment: 1)]
    ),
    7: Perk(
      number: 7,
      description: 'Substitua uma carta +0 por uma carta +1 EMPURRAR',
      iconPathList: [ConditionRepository.map['push']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 12, increment: 1)]
    ),
    8: Perk(
      number: 8,
      description: 'Substitua uma carta +0 por uma carta +0 ATORDOAR',
      iconPathList: [ConditionRepository.map['stun']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 13, increment: 1)]
    ),
    9: Perk(
      number: 9,
      description: 'Substitua uma carta +1 por uma carta +1 ATORDOAR',
      iconPathList: [ConditionRepository.map['stun']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 14, increment: 1)]
    ),
    10: Perk(
      number: 10,
      description: 'Adicione uma carta +2',
      iconPathList: [ElementRepository.map['air']!.iconPath],
      perkRuleList: [PerkRule(number: 15, increment: 1)]
    ),
    11: Perk(
      number: 11,
      description: 'Adicione uma carta +2',
      iconPathList: [ElementRepository.map['air']!.iconPath],
      perkRuleList: [PerkRule(number: 15, increment: 1)]
    ),
    12: Perk(
      number: 12,
      description: 'Adicione uma carta +2',
      iconPathList: [ElementRepository.map['air']!.iconPath],
      perkRuleList: [PerkRule(number: 15, increment: 1)]
    ),
    13: Perk(
      number: 13, 
      description: 'Substitua uma carta +1 por uma carta +3',
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 16, increment: 1)]
    ),
    14: Perk(
      number: 14, 
      description: 'Substitua uma carta +1 por uma carta +3',
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 16, increment: 1)]
    ),
    15: Perk(
      number: 15, 
      description: 'Substitua uma carta +1 por uma carta +3',
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 16, increment: 1)]
    ),
  };

  static Map<int, Perk> mapDemolitionist = {
    1: Perk(
      number: 1, 
      description: 'Remova quatro cartas +0',
      perkRuleList: [PerkRule(number: 1, decrement: 4)]
    ),
    2: Perk(
      number: 2, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    3: Perk(
      number: 3, 
      description: 'Remova duas cartas -1',
      perkRuleList: [PerkRule(number: 4, decrement: 2)]
    ),
    4: Perk(
      number: 4, 
      description: 'Remova uma carta -2 e uma carta +1',
      perkRuleList: [PerkRule(number: 5, decrement: 1), PerkRule(number: 2, decrement: 1)]
    ),
    5: Perk(
      number: 5,
      description: 'Substitua uma carta +0 por uma carta +2 CONFUNDIR',
      iconPathList: [ConditionRepository.map['muddle']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    6: Perk(
      number: 6,
      description: 'Substitua uma carta +0 por uma carta +2 CONFUNDIR',
      iconPathList: [ConditionRepository.map['muddle']!.iconPath],
      perkRuleList: [PerkRule(number: 1, decrement: 1), PerkRule(number: 8, increment: 1)]
    ),
    7: Perk(
      number: 7,
      description: 'Substitua uma carta -1 por uma carta +0 VENENO',
      iconPathList: [ConditionRepository.map['poison']!.iconPath],
      perkRuleList: [PerkRule(number: 4, decrement: 1), PerkRule(number: 9, increment: 1)]
    ),
    8: Perk(
      number: 8, 
      description: 'Adicione uma carta +2',
      perkRuleList: [PerkRule(number: 10, increment: 1)]
    ),
    9: Perk(
      number: 9, 
      description: 'Adicione uma carta +2',
      perkRuleList: [PerkRule(number: 10, increment: 1)]
    ),
    10: Perk(
      number: 10,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['earth']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 11, increment: 1)]
    ),
    11: Perk(
      number: 11,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['earth']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 11, increment: 1)]
    ),
    12: Perk(
      number: 12,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['fire']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 12, increment: 1)]
    ),
    13: Perk(
      number: 13,
      description: 'Substitua uma carta +1 por uma carta +2',
      iconPathList: [ElementRepository.map['fire']!.iconPath],
      perkRuleList: [PerkRule(number: 2, decrement: 1), PerkRule(number: 12, increment: 1)]
    ),
    14: Perk(
      number: 14,
      description: 'Adicione uma carta +0 "Todos os inimigos adjacentes sofrem 1 de dano"',
      perkRuleList: [PerkRule(number: 13, increment: 1)]
    ),
    15: Perk(
      number: 15,
      description: 'Adicione uma carta +0 "Todos os inimigos adjacentes sofrem 1 de dano"',
      perkRuleList: [PerkRule(number: 13, increment: 1)]
    ),
  };

  static Perk? getPerk(String character, int number) {
    Perk? perk;

    if (character == 'voidwarden') {
      perk = mapVoidwarden[number];
    } else if (character == 'redGuard') {
      perk = mapRedGuard[number];
    } else if (character == 'hatchet') {
      perk = mapHatchet[number];
    } else if (character == 'demolitionist') {
      perk = mapDemolitionist[number];
    }

    return perk;
  }
}
