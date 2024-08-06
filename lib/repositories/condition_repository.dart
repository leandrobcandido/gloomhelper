import '../models/condition.dart';

class ConditionRepository {

  static Map<String, Condition> map = {
    'curse': Condition(name: 'Maldição', iconPath: 'assets/condition/curse.svg'),
    'poison': Condition(name: 'Veneno', iconPath: 'assets/condition/poison.svg'),
    'immobilize': Condition(name: 'Imobilizar', iconPath: 'assets/condition/immobilize.svg'),
    'wound': Condition(name: 'Ferimento', iconPath: 'assets/condition/wound.svg'),
    'muddle': Condition(name: 'Confundir', iconPath: 'assets/condition/muddle.svg'),
    'push': Condition(name: 'Empurrar', iconPath: 'assets/condition/push.svg'),
    'stun': Condition(name: 'Atordoar', iconPath: 'assets/condition/stun.svg'),
  };

}