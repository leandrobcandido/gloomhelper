import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'gloomhelper.dart';
import 'models/campaign.dart';
import 'models/campaign_event.dart';
import 'models/campaign_item.dart';
import 'models/campaign_scenario.dart';
import 'models/campaign_secret.dart';
import 'models/campaign_treasure.dart';
import 'models/player.dart';
import 'models/player_ability_card.dart';
import 'models/player_attack_card.dart';
import 'models/player_battle_goal.dart';
import 'models/player_item.dart';
import 'models/player_perk.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [
      PlayerPerkSchema,
      PlayerBattleGoalSchema,
      PlayerAttackCardSchema,
      PlayerAbilityCardSchema,
      PlayerItemSchema,
      PlayerSchema,
      CampaignEventSchema,
      CampaignItemSchema,
      CampaignScenarioSchema,
      CampaignSecretSchema,
      CampaignTreasureSchema,
      CampaignSchema
    ],
    directory: dir.path,
  );

  runApp(Gloomhelper(isar: isar));
  
}