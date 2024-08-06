import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign_secret.dart';
import '../repositories/isar_repository.dart';

class CampaignSecretPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final IsarLinks<CampaignSecret> campaignSecretList;

  const CampaignSecretPage({super.key, required this.isarRepository, required this.isar, required this.campaignSecretList});

  @override
  State<CampaignSecretPage> createState() => _CampaignSecretPageState();
}

class _CampaignSecretPageState extends State<CampaignSecretPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: Constants.secondaryColor,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Segredos',
                style: TextStyle(
                  color: Constants.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(              
            itemCount: widget.campaignSecretList.length,
            itemBuilder: (context, index) {
              final campaignSecret = widget.campaignSecretList.elementAt(index);
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Text(
                          campaignSecret.letter,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ),
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Checkbox(
                          value: campaignSecret.revealed,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              campaignSecret.revealed = value!;
                            });
                            widget.isarRepository.saveCampaignSecret(campaignSecret, widget.isar);
                          }
                        ),
                      )
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ],
    );
  }
}