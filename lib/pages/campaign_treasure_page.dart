import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign_treasure.dart';
import '../repositories/isar_repository.dart';

class CampaignTreasurePage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final IsarLinks<CampaignTreasure> campaignTreasureList;

  const CampaignTreasurePage({super.key, required this.isarRepository, required this.isar, required this.campaignTreasureList});

  @override
  State<CampaignTreasurePage> createState() => _CampaignTreasurePageState();
}

class _CampaignTreasurePageState extends State<CampaignTreasurePage> {
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
                'Tesouros',
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
            itemCount: widget.campaignTreasureList.length,
            itemBuilder: (context, index) {
              final campaignTreasure = widget.campaignTreasureList.elementAt(index);
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '${campaignTreasure.number}',
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
                          value: campaignTreasure.collected,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              campaignTreasure.collected = value!;
                            });
                            widget.isarRepository.saveCampaignTreasure(campaignTreasure, widget.isar);
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