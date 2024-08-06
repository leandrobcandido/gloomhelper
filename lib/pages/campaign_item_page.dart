import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign.dart';
import '../models/player.dart';
import '../repositories/isar_repository.dart';
import '../repositories/item_repository.dart';
import '../repositories/item_type_repository.dart';

class CampaignItemPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Campaign campaign;

  const CampaignItemPage({super.key, required this.isarRepository, required this.isar, required this.campaign});

  @override
  State<CampaignItemPage> createState() => _CampaignItemPageState();
}

class _CampaignItemPageState extends State<CampaignItemPage> {
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
                'Itens',
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
            itemCount: widget.campaign.campaignItemList.length,
            itemBuilder: (context, index) {
              final campaignItem = widget.campaign.campaignItemList.elementAt(index);
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          ItemRepository.map[campaignItem.number]!.name,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: Center(
                          child: Text(
                            '${campaignItem.number}',
                            style: const TextStyle(
                              color: Constants.secondaryColor,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: SvgPicture.asset(
                          ItemTypeRepository.map[ItemRepository.map[campaignItem.number]!.itemType]!.iconPath,
                          height: 20,
                          colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn)
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: campaignItem.available,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              campaignItem.available = value!;
                              if (!campaignItem.available) {
                                IsarLinks<Player> playerList = widget.campaign.playerList;
                                for (var i = 0; i < playerList.length; i++) {
                                  if (playerList.elementAt(i).playerItemList.elementAt(index).owned) {
                                    widget.campaign.playerList.elementAt(i).playerItemList.elementAt(index).owned = false;
                                    widget.isarRepository.savePlayerItem(widget.campaign.playerList.elementAt(i).playerItemList.elementAt(index), widget.isar);
                                  }
                                }
                              }
                            });
                            widget.isarRepository.saveCampaignItem(campaignItem, widget.isar);
                          }
                        ),
                      ),
                    ],
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