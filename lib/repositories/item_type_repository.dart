import '../models/item_type.dart';

class ItemTypeRepository {

  static Map<String, ItemType> map = {
    'head': ItemType(name: 'Cabeça', iconPath: 'assets/item_type/helmet.svg'),
    'body': ItemType(name: 'Corpo', iconPath: 'assets/item_type/armor.svg'),
    'feet': ItemType(name: 'Pernas', iconPath: 'assets/item_type/boot.svg'),
    'hand': ItemType(name: 'Mãos', iconPath: 'assets/item_type/hand.svg'),
    'small': ItemType(name: 'Item Pequeno', iconPath: 'assets/item_type/small.svg')
  };

}