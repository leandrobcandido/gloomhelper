import '../constants.dart';
import '../models/character.dart';

class CharacterRepository {

  static Map<String, Character> map = {
    'voidwarden': Character(name: 'Guardiã do Vazio', color: Constants.voidwardenColor, iconPath: 'assets/character/voidwarden.svg'),
    'redGuard': Character(name: 'Guarda Vermelho', color: Constants.redGuardColor, iconPath: 'assets/character/red_guard.svg'),
    'hatchet': Character(name: 'Machadinha', color: Constants.hatchetColor, iconPath: 'assets/character/hatchet.svg'),
    'demolitionist': Character(name: 'Demolicionista', color: Constants.demolitionistColor, iconPath: 'assets/character/demolitionist.svg')
  };

}