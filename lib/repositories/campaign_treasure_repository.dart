import '../models/campaign_treasure.dart';

class CampaignTreasureRepository {

  static List<CampaignTreasure> getList() {
    List<CampaignTreasure> campaignTreasureList = [];

    for (var i = 1; i <= 16 ; i++) {
      campaignTreasureList.add(CampaignTreasure(number: i));
    }

    return campaignTreasureList;
  }  
}