import '../models/campaign_secret.dart';

class CampaignSecretRepository {

  static List<CampaignSecret> getList() {
    List<CampaignSecret> campaignSecretList = [];

    campaignSecretList.add(CampaignSecret(letter: 'A'));
    campaignSecretList.add(CampaignSecret(letter: 'B'));
    campaignSecretList.add(CampaignSecret(letter: 'C'));
    campaignSecretList.add(CampaignSecret(letter: 'D'));

    return campaignSecretList;
  }

}