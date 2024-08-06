import 'package:isar/isar.dart';
part 'campaign_item.g.dart';

@collection
class CampaignItem {
  Id id = Isar.autoIncrement;
  int number;
  bool available;

  CampaignItem({
    required this.number,
    this.available = false
  });
}