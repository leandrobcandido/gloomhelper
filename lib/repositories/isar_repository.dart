import 'package:isar/isar.dart';
import '../models/campaign.dart';
import '../models/campaign_event.dart';
import '../models/campaign_item.dart';
import '../models/campaign_scenario.dart';
import '../models/campaign_secret.dart';
import '../models/campaign_treasure.dart';
import '../models/player.dart';
import '../models/player_ability_card.dart';
import '../models/player_attack_card.dart';
import '../models/player_battle_goal.dart';
import '../models/player_item.dart';
import '../models/player_perk.dart';
import 'campaign_event_repository.dart';
import 'campaign_item_repository.dart';
import 'campaign_scenario_repository.dart';
import 'campaign_secret_repository.dart';
import 'campaign_treasure_repository.dart';
import 'player_ability_card_repository.dart';
import 'player_attack_card_repository.dart';
import 'player_battle_goal_repository.dart';
import 'player_item_repository.dart';
import 'player_perk_repository.dart';

class IsarRepository {

  insertCampaign(String teamName, List<Player> playerList, Isar isar) async {

    final campaign = Campaign()
      ..teamName = teamName
      ..startDate = DateTime.now()
      ..lastDate = DateTime.now();

    List<CampaignScenario> campaignScenarioList = CampaignScenarioRepository.getList();
    campaign.campaignScenarioList.addAll(campaignScenarioList);

    List<CampaignEvent> campaignEventList = CampaignEventRepository.getList();
    campaign.campaignEventList.addAll(campaignEventList);

    List<CampaignTreasure> campaignTreasureList = CampaignTreasureRepository.getList();
    campaign.campaignTreasureList.addAll(campaignTreasureList);

    List<CampaignSecret> campaignSecretList = CampaignSecretRepository.getList();
    campaign.campaignSecretList.addAll(campaignSecretList);

    List<CampaignItem> campaignItemList = CampaignItemRepository.getList();
    campaign.campaignItemList.addAll(campaignItemList);

    campaign.playerList.addAll(playerList);

    await isar.writeTxn(() async {
      await isar.campaigns.put(campaign);
      
      await isar.campaignScenarios.putAll(campaignScenarioList);
      await campaign.campaignScenarioList.save();
      
      await isar.campaignEvents.putAll(campaignEventList);
      await campaign.campaignEventList.save();
      
      await isar.campaignTreasures.putAll(campaignTreasureList);
      await campaign.campaignTreasureList.save();
      
      await isar.campaignSecrets.putAll(campaignSecretList);
      await campaign.campaignSecretList.save();
      
      await isar.campaignItems.putAll(campaignItemList);
      await campaign.campaignItemList.save();

      await isar.players.putAll(playerList);
      await campaign.playerList.save();

      for (int i = 0; i < playerList.length; i++) {        

        List<PlayerItem> playerItemList = PlayerItemRepository.getList();
        playerList[i].playerItemList.addAll(playerItemList);
        await isar.playerItems.putAll(playerItemList);
        playerList[i].playerItemList.save();

        List<PlayerAbilityCard> playerAbilityCardList = PlayerAbilityCardRepository.getList(playerList[i].character);
        playerList[i].playerAbilityCardList.addAll(playerAbilityCardList);
        await isar.playerAbilityCards.putAll(playerAbilityCardList);
        playerList[i].playerAbilityCardList.save();

        List<PlayerPerk> playerPerkList = PlayerPerkRepository.getList(playerList[i].character);
        playerList[i].playerPerkList.addAll(playerPerkList);
        await isar.playerPerks.putAll(playerPerkList);
        playerList[i].playerPerkList.save();
        
        List<PlayerBattleGoal> playerBattleGoalList = PlayerBattleGoalRepository.getList();
        playerList[i].playerBattleGoalList.addAll(playerBattleGoalList);
        await isar.playerBattleGoals.putAll(playerBattleGoalList);
        playerList[i].playerBattleGoalList.save();

        List<PlayerAttackCard> playerAttackCardList = PlayerAttackCardRepository.getList(playerList[i].character);
        playerList[i].playerAttackCardList.addAll(playerAttackCardList);
        await isar.playerAttackCards.putAll(playerAttackCardList);
        playerList[i].playerAttackCardList.save();

      }
      
    });
  }

  savePlayer(Player player, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.players.get(player.id);

      data?.gold = player.gold;
      data?.xp = player.xp;
      data?.level = player.level;

      await isar.players.put(data!);
    });
  }

  savePlayerAbilityCard(PlayerAbilityCard playerAbilityCard, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.playerAbilityCards.get(playerAbilityCard.id);

      data?.available = playerAbilityCard.available;

      await isar.playerAbilityCards.put(data!);
    });
  }

  savePlayerItem(PlayerItem playerItem, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.playerItems.get(playerItem.id);

      data?.owned = playerItem.owned;

      await isar.playerItems.put(data!);
    });
  }

  savePlayerPerk(PlayerPerk playerPerk, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.playerPerks.get(playerPerk.id);

      data?.unlocked = playerPerk.unlocked;

      await isar.playerPerks.put(data!);
    });
  }

  savePlayerAttackCard(PlayerAttackCard playerAttackCard, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.playerAttackCards.get(playerAttackCard.id);

      data?.quantity = playerAttackCard.quantity;

      await isar.playerAttackCards.put(data!);
    });
  }

  savePlayerBattleGoal(PlayerBattleGoal playerBattleGoal, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.playerBattleGoals.get(playerBattleGoal.id);

      data?.checkMark1 = playerBattleGoal.checkMark1;
      data?.checkMark2 = playerBattleGoal.checkMark2;
      data?.checkMark3 = playerBattleGoal.checkMark3;

      await isar.playerBattleGoals.put(data!);
    });
  }

  saveCampaignScenario(CampaignScenario campaignScenario, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.campaignScenarios.get(campaignScenario.id);

      data?.available = campaignScenario.available;
      data?.completed = campaignScenario.completed;

      await isar.campaignScenarios.put(data!);
    });
  }

  saveCampaignEvent(CampaignEvent campaignEvent, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.campaignEvents.get(campaignEvent.id);

      data?.optionA = campaignEvent.optionA;
      data?.optionB = campaignEvent.optionB;

      await isar.campaignEvents.put(data!);
    });
  }

  saveCampaignTreasure(CampaignTreasure campaignTreasure, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.campaignTreasures.get(campaignTreasure.id);

      data?.collected = campaignTreasure.collected;

      await isar.campaignTreasures.put(data!);
    });
  }

  saveCampaignSecret(CampaignSecret campaignSecret, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.campaignSecrets.get(campaignSecret.id);

      data?.revealed = campaignSecret.revealed;

      await isar.campaignSecrets.put(data!);
    });
  }

  saveCampaignItem(CampaignItem campaignItem, Isar isar) async {
    await isar.writeTxn(() async {
      final data = await isar.campaignItems.get(campaignItem.id);

      data?.available = campaignItem.available;

      await isar.campaignItems.put(data!);
    });
  }

  deleteCampaign(Id id, Isar isar) async {
    final campaign = await isar.campaigns.get(id);
    if (campaign == null) {
      return;
    }

    List<int> idPlayerList = [];
    List<int> idPlayerItemList = [];
    List<int> idPlayerPerkList = [];
    List<int> idPlayerBattleGoalList = [];
    List<int> idPlayerAttackCardList = [];
    List<int> idPlayerAbilityCardList = [];
    List<int> idCampaignTreasureList = [];
    List<int> idCampaignSecretList = [];
    List<int> idCampaignScenarioList = [];
    List<int> idCampaignItemList = [];
    List<int> idCampaignEventList = [];

    idPlayerList.addAll(campaign.playerList.map((object)=> object.id));
    idCampaignTreasureList.addAll(campaign.campaignTreasureList.map((object)=> object.id));
    idCampaignSecretList.addAll(campaign.campaignSecretList.map((object)=> object.id));
    idCampaignScenarioList.addAll(campaign.campaignScenarioList.map((object)=> object.id));
    idCampaignItemList.addAll(campaign.campaignItemList.map((object)=> object.id));
    idCampaignEventList.addAll(campaign.campaignEventList.map((object)=> object.id));

    for (Player player in campaign.playerList) {
      idPlayerItemList.addAll(player.playerItemList.map((object)=> object.id));
      idPlayerPerkList.addAll(player.playerPerkList.map((object)=> object.id));
      idPlayerBattleGoalList.addAll(player.playerBattleGoalList.map((object)=> object.id));
      idPlayerAttackCardList.addAll(player.playerAttackCardList.map((object)=> object.id));
      idPlayerAbilityCardList.addAll(player.playerAbilityCardList.map((object)=> object.id));
    }

    await isar.writeTxn(() async {
      await isar.campaigns.delete(id);

      if (idPlayerList.isNotEmpty) {
        await isar.players.deleteAll(idPlayerList);
      }

      if (idPlayerItemList.isNotEmpty) {
        await isar.playerItems.deleteAll(idPlayerItemList);
      }
      
      if (idPlayerPerkList.isNotEmpty) {
        await isar.playerPerks.deleteAll(idPlayerPerkList);
      }

      if (idPlayerBattleGoalList.isNotEmpty) {
        await isar.playerBattleGoals.deleteAll(idPlayerBattleGoalList);
      }

      if (idPlayerAttackCardList.isNotEmpty) {
        await isar.playerAttackCards.deleteAll(idPlayerAttackCardList);
      }

      if (idPlayerAbilityCardList.isNotEmpty) {
        await isar.playerAbilityCards.deleteAll(idPlayerAbilityCardList);
      }

      if (idCampaignEventList.isNotEmpty) {
        await isar.campaignEvents.deleteAll(idCampaignEventList);
      }

      if (idCampaignItemList.isNotEmpty) {
        await isar.campaignItems.deleteAll(idCampaignItemList);
      }

      if (idCampaignScenarioList.isNotEmpty) {
        await isar.campaignScenarios.deleteAll(idCampaignScenarioList);
      }

      if (idCampaignSecretList.isNotEmpty) {
        await isar.campaignSecrets.deleteAll(idCampaignSecretList);
      }

      if (idCampaignTreasureList.isNotEmpty) {
        await isar.campaignTreasures.deleteAll(idCampaignTreasureList);
      }
      
    });
  }

}