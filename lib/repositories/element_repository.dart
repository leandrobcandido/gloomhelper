import '../models/element.dart';

class ElementRepository {

  static Map<String, Element> map = {
    'air': Element(name: 'Ar', iconPath: 'assets/element/air.svg'),
    'dark': Element(name: 'Escuridão', iconPath: 'assets/element/dark.svg'),
    'earth': Element(name: 'Terra', iconPath: 'assets/element/earth.svg'),
    'fire': Element(name: 'Fogo', iconPath: 'assets/element/fire.svg'),
    'ice': Element(name: 'Gelo', iconPath: 'assets/element/ice.svg'),
    'light': Element(name: 'Luz', iconPath: 'assets/element/light.svg')
  };

}