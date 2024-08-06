import 'package:isar/isar.dart';
part 'campaign_scenario.g.dart';

@collection
class CampaignScenario {
  Id id = Isar.autoIncrement;
  int number;
  bool available;
  bool completed;

  CampaignScenario({
    required this.number,
    this.available = false,
    this.completed = false,
  });
}