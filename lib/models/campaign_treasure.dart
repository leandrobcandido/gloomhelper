import 'package:isar/isar.dart';
part 'campaign_treasure.g.dart';

@collection
class CampaignTreasure {
  Id id = Isar.autoIncrement;
  int number;
  bool collected;

  CampaignTreasure({
    required this.number,
    this.collected = false,
  });
}