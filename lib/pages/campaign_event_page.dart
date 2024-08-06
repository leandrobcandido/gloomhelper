import 'package:flutter/material.dart';
import 'package:gloomhelper/models/campaign_event.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../repositories/isar_repository.dart';

class CampaignEventPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final IsarLinks<CampaignEvent> campaignEventList;

  const CampaignEventPage({super.key, required this.isarRepository, required this.isar, required this.campaignEventList});

  @override
  State<CampaignEventPage> createState() => _CampaignEventPageState();
}

class _CampaignEventPageState extends State<CampaignEventPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: Constants.secondaryColor,
          child: const Row(
            children: [
              Flexible(
                flex: 4,
                child: Center(
                  child: Text(
                    'Eventos',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Center(
                  child: Text(
                    'A',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Center(
                  child: Text(
                    'B',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(              
            itemCount: widget.campaignEventList.length,
            itemBuilder: (context, index) {
              final campaignEvent = widget.campaignEventList.elementAt(index);
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Center(
                        child: Text(
                          '${campaignEvent.number}',
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Center(
                        child: Checkbox(
                          value: campaignEvent.optionA,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              campaignEvent.optionA = value!;
                              if (campaignEvent.optionA) {
                                campaignEvent.optionB = false;
                              }
                            });
                            widget.isarRepository.saveCampaignEvent(campaignEvent, widget.isar);
                          }
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Center(
                        child: Checkbox(                              
                          value: campaignEvent.optionB,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              campaignEvent.optionB = value!;
                              if (campaignEvent.optionB) {
                                campaignEvent.optionA = false;
                              }
                            });
                            widget.isarRepository.saveCampaignEvent(campaignEvent, widget.isar);
                          }
                        ),
                      ),
                    )
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