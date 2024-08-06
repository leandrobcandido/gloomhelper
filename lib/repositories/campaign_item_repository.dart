import '../models/campaign_item.dart';
import 'item_repository.dart';

class CampaignItemRepository {

  static List<CampaignItem> getList() {
    List<CampaignItem> campaignItemList = [];

    ItemRepository.map.forEach((key, item) {
      campaignItemList.add(
        CampaignItem(number: item.number)
      );
    });

    // ItemRepository.map.forEach((key, item) => campaignItemList.add(CampaignItem(number: item.number)));

    return campaignItemList;
  }  
}