import 'player.dart';
import 'campaign_item.dart';
import 'campaign_event.dart';
import 'campaign_scenario.dart';
import 'campaign_treasure.dart';
import 'campaign_secret.dart';
import 'package:isar/isar.dart';
part 'campaign.g.dart';

@collection
class Campaign {
    Id id = Isar.autoIncrement;
    late String teamName;
    late DateTime startDate;
    late DateTime lastDate;
    final playerList = IsarLinks<Player>();
    final campaignScenarioList = IsarLinks<CampaignScenario>();
    final campaignEventList = IsarLinks<CampaignEvent>();
    final campaignTreasureList = IsarLinks<CampaignTreasure>();
    final campaignSecretList = IsarLinks<CampaignSecret>();
    final campaignItemList = IsarLinks<CampaignItem>();
}