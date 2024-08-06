import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign_item.dart';
import '../models/player.dart';
import '../repositories/character_repository.dart';
import '../repositories/isar_repository.dart';
import '../repositories/item_repository.dart';
import '../repositories/item_type_repository.dart';

class PlayerItemEditPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;
  final IsarLinks<CampaignItem> campaignItemList;

  const PlayerItemEditPage({super.key, required this.isarRepository, required this.isar, required this.player, required this.campaignItemList});

  @override
  State<PlayerItemEditPage> createState() => _PlayerItemEditPageState();
}

class _PlayerItemEditPageState extends State<PlayerItemEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              widget.player.name,
              style: const TextStyle(
                color: Constants.secondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              CharacterRepository.map[widget.player.character]!.name,
              style: const TextStyle(
                color: Constants.secondaryColor,
                fontSize: 14
              ),
            ),
          ],
        ),
        actions: [
          SvgPicture.asset(
            CharacterRepository.map[widget.player.character]!.iconPath,
            height: 36,
            colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: Center(
              child: Text(
                '${widget.player.level}',
                style: const TextStyle(
                  color: Constants.secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 28,
          icon: const Icon(Icons.arrow_back_sharp),
          style: const ButtonStyle(
            iconColor: MaterialStatePropertyAll(Constants.secondaryColor)
          ),
        ),
        backgroundColor: CharacterRepository.map[widget.player.character]?.color,
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            color: Constants.secondaryColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Todos os Itens',
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
              itemCount: widget.player.playerItemList.length,
              itemBuilder: (context, index) {
                final playerItem = widget.player.playerItemList.elementAt(index);
                final campaignItem = widget.campaignItemList.elementAt(index);
                return Container(
                  color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            ItemRepository.map[playerItem.number]!.name,
                            style: const TextStyle(
                              color: Constants.secondaryColor,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 40,
                          child: Center(
                            child: Text(
                              '${playerItem.number}',
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
                            ItemTypeRepository.map[ItemRepository.map[playerItem.number]!.itemType]!.iconPath,
                            height: 20,
                            colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn)
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: (!campaignItem.available)
                          ? const Icon(Icons.block, color: Constants.iconBlockColor, size: 20,)
                          : Checkbox(
                            value: playerItem.owned,
                            activeColor: Constants.checkboxActiveColor,
                            checkColor: Constants.secondaryColor,
                            side: const BorderSide(
                              color: Constants.secondaryColor
                            ),
                            onChanged: (value) {
                              setState(() {
                                playerItem.owned = value!;
                                if (playerItem.owned && !campaignItem.available) {
                                  playerItem.owned = false;
                                }
                              });
                              widget.isarRepository.savePlayerItem(playerItem, widget.isar);
                            }
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}