import '../models/campaign_scenario.dart';
import 'scenario_repository.dart';

class CampaignScenarioRepository {

  static List<CampaignScenario> getList() {
    List<CampaignScenario> campaignScenarioList = [];

    ScenarioRepository.map.forEach((key, scenario) {
      campaignScenarioList.add(
        CampaignScenario(number: scenario.number, available: scenario.available)
      );
    });

    return campaignScenarioList;
  }  
}