import '../models/player_item.dart';
import 'item_repository.dart';

class PlayerItemRepository {

  static List<PlayerItem> getList() {
    List<PlayerItem> playerItemList = [];

    ItemRepository.map.forEach((key, item) {
      playerItemList.add(
        PlayerItem(number: item.number)
      );
    });

    return playerItemList;
  }

}