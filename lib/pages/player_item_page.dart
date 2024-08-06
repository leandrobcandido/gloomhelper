import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign_item.dart';
import '../models/player.dart';
import '../models/player_item.dart';
import '../repositories/isar_repository.dart';
import '../repositories/item_repository.dart';
import '../repositories/item_type_repository.dart';
import 'player_item_edit_page.dart';

class PlayerItemPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;
  final IsarLinks<CampaignItem> campaignItemList;

  const PlayerItemPage({super.key, required this.isarRepository, required this.isar, required this.player, required this.campaignItemList});

  @override
  State<PlayerItemPage> createState() => _PlayerItemPageState();
}

class _PlayerItemPageState extends State<PlayerItemPage> {

  showPlayerItemEditPage(Player player, IsarLinks<CampaignItem> campaignItemList) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => PlayerItemEditPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
          player: player,
          campaignItemList: campaignItemList
        ),
      ),
    ).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    List<PlayerItem> playerItemOwnedList = widget.player.playerItemList.where((element) => element.owned == true).toList();

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showPlayerItemEditPage(widget.player, widget.campaignItemList);
          },
          child: Container(
            height: 40,
            color: Constants.secondaryColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Itens do Personagem',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.edit,
                  size: 26,
                  color: Constants.primaryColor,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: playerItemOwnedList.length,
            itemBuilder: (context, index) {
              final playerItem = playerItemOwnedList[index];
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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