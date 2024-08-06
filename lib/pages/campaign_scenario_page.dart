import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign_scenario.dart';
import '../repositories/isar_repository.dart';
import '../repositories/scenario_repository.dart';

class CampaignScenarioPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final IsarLinks<CampaignScenario> campaignScenarioList;

  const CampaignScenarioPage({super.key, required this.isarRepository, required this.isar, required this.campaignScenarioList});

  @override
  State<CampaignScenarioPage> createState() => _CampaignScenarioPageState();
}

class _CampaignScenarioPageState extends State<CampaignScenarioPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: Constants.secondaryColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cenários',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 50,
                      child: SvgPicture.asset(
                        'assets/campaign/available.svg',
                        height: 24,
                        colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: SvgPicture.asset(
                        'assets/campaign/completed.svg',
                        height: 20,
                        colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.campaignScenarioList.length,
            itemBuilder: (context, index) {
              final campaignScenario = widget.campaignScenarioList.elementAt(index);
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '${campaignScenario.number}. ${ScenarioRepository.map[campaignScenario.number]?.name}',
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 50,
                            child: Checkbox(
                              value: campaignScenario.available,
                              activeColor: Constants.checkboxActiveColor,
                              checkColor: Constants.secondaryColor,
                              side: const BorderSide(
                                color: Constants.secondaryColor
                              ),
                              onChanged: (value) {
                                setState(() {
                                  campaignScenario.available = value!;
                                  if (!campaignScenario.available) {
                                    campaignScenario.completed = false;
                                  }
                                });
                                widget.isarRepository.saveCampaignScenario(campaignScenario, widget.isar);
                              }
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: (!campaignScenario.available)
                              ? const Icon(Icons.block, color: Constants.iconBlockColor, size: 20,)
                              : Checkbox(                              
                                  value: campaignScenario.completed,
                                  activeColor: Constants.checkboxActiveColor,
                                  checkColor: Constants.secondaryColor,
                                  side: const BorderSide(
                                    color: Constants.secondaryColor
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      campaignScenario.completed = value!;
                                    });
                                    widget.isarRepository.saveCampaignScenario(campaignScenario, widget.isar);
                                  }
                                ),
                          ),
                        ],
                      )
                    ]
                  ),
                ),
              );
            }
          ),
        ),
      ],
    );
  }
}