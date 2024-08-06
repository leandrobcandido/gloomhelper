import 'perk_rule.dart';

class Perk {
  int number;
  String description;
  List<String>? iconPathList;
  List<PerkRule> perkRuleList;

  Perk({
    required this.number,
    required this.description,
    this.iconPathList,
    required this.perkRuleList
  });
}