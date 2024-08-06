import 'package:isar/isar.dart';
part 'campaign_secret.g.dart';

@collection
class CampaignSecret {
  Id id = Isar.autoIncrement;
  String letter;
  bool revealed;

  CampaignSecret({
    required this.letter,
    this.revealed = false,
  });
}