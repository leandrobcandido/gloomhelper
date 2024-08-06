import 'package:isar/isar.dart';
part 'campaign_event.g.dart';

@collection
class CampaignEvent {
  Id id = Isar.autoIncrement;
  int number;
  bool optionA;
  bool optionB;

  CampaignEvent({
    required this.number,
    this.optionA = false,
    this.optionB = false,
  });
}