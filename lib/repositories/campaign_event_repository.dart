import '../models/campaign_event.dart';

class CampaignEventRepository {

  static List<CampaignEvent> getList() {
    List<CampaignEvent> campaignEventList = [];

    for (var i = 1; i <= 22 ; i++) {
      campaignEventList.add(CampaignEvent(number: i));
    }

    return campaignEventList;
  }

}