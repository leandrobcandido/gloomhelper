import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign.dart';
import '../models/campaign_item.dart';
import '../models/player.dart';
import '../repositories/character_repository.dart';
import '../repositories/isar_repository.dart';
import 'campaign_page.dart';
import 'package:intl/intl.dart';
import 'new_campaign_page.dart';
import 'player_page.dart';

class HomePage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  const HomePage({super.key, required this.isarRepository, required this.isar});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Campaign> campaignList = [];
  Offset _tapPosition = Offset.zero;

  readCampaign() async {
    final campaignCollection = await widget.isar.campaigns.where().findAll();
    setState(() {
      campaignList = campaignCollection;
    });
  }

  showNewCampaignPage() {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => NewCampaignPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
        ),
      ),
    ).then((value) => setState(() {}));
  }

  showCampaignPage(Campaign campaign) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => CampaignPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
          campaign: campaign
        ),
      ),
    ).then((value) => setState(() {}));
  }

  showPlayerPage(Player player, Campaign campaign, IsarLinks<CampaignItem> campaignItemList) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => PlayerPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
          player: player,
          campaignItemList: campaignItemList,
          campaign: campaign
        ),
      ),
    ).then((value) => setState(() {}));
  }

  Future<void> showDeleteDialog(BuildContext context, Campaign campaign) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Constants.primaryColor,
          actionsAlignment: MainAxisAlignment.center,
          title: const Icon(
            Icons.delete,
            size: 36,
            color: Constants.secondaryColor,
          ),
          content: Text(
            'Deletar a campanha do grupo\n${campaign.teamName}?',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Constants.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Constants.secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  )
                ),
                child: const Text(
                  'Não',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Constants.secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  )
                ),
                child: const Text(
                  'Sim',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    widget.isarRepository.deleteCampaign(campaign.id, widget.isar);  
                  });
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  
  void getTapPosition (TapDownDetails tapPosition) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = renderBox.globalToLocal(tapPosition.globalPosition);
    });
  }

  void showContextMenu (context, Campaign campaign) async {
    final RenderObject? overlay = Overlay.of(context).context.findRenderObject();
    final result = await showMenu(
      context: context, 
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 10, 10),
        Rect.fromLTWH(0, 0, overlay!.paintBounds.size.width, overlay.paintBounds.size.height)
      ),
      items: [
        const PopupMenuItem(
          value: 1,
          child: Center(
            child: Icon(
              Icons.delete,
              color: Constants.primaryColor
            ),
          ),
        )
      ]
    );

    if (result == 1) {
      showDeleteDialog(context, campaign);
    }
  }

  @override
  Widget build(BuildContext context) {
    readCampaign();
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Campanhas',
          style: TextStyle(
            color: Constants.secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showNewCampaignPage();
            },
            iconSize: 28,
            icon: const Icon(Icons.add_sharp),
            style: const ButtonStyle(
              iconColor: MaterialStatePropertyAll(Constants.secondaryColor)
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: (campaignList.isEmpty)
          ? Center(
              child: GestureDetector(
                onTap: () => showNewCampaignPage(),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            CharacterRepository.map['voidwarden']!.iconPath,
                            height: 40,
                            colorFilter: ColorFilter.mode(CharacterRepository.map['voidwarden']!.color, BlendMode.srcIn),
                          ),
                          SvgPicture.asset(
                            CharacterRepository.map['demolitionist']!.iconPath,
                            height: 40,
                            colorFilter: ColorFilter.mode(CharacterRepository.map['demolitionist']!.color, BlendMode.srcIn),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            CharacterRepository.map['redGuard']!.iconPath,
                            height: 40,
                            colorFilter: ColorFilter.mode(CharacterRepository.map['redGuard']!.color, BlendMode.srcIn),
                          ),
                          SvgPicture.asset(
                            CharacterRepository.map['hatchet']!.iconPath,
                            height: 40,
                            colorFilter: ColorFilter.mode(CharacterRepository.map['hatchet']!.color, BlendMode.srcIn),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            )
          : Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 5),
                itemCount: campaignList.length,
                itemBuilder: (context, index) {
                  final campaign = campaignList[index];
                  final playerList = campaign.playerList;
                  return Card(
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Constants.primaryColor.withAlpha(30),
                          onTap: () => showCampaignPage(campaign),
                          // onLongPress: () => showDeleteDialog(context, campaign.id),
                          onTapDown: (position) {
                            getTapPosition(position);
                          },
                          onLongPress: () {
                            showContextMenu (context, campaign);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  campaign.teamName,
                                  style: const TextStyle(
                                    color: Constants.primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  DateFormat('dd/MM/yyyy').format(campaign.lastDate),
                                  style: const TextStyle(
                                    color: Constants.primaryColor,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for(var p = 0; p < playerList.length; p++)
                              Flexible(  
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () => showPlayerPage(
                                    playerList.elementAt(p), 
                                    campaign, 
                                    campaign.campaignItemList
                                  ),
                                  child: Container(
                                    color: CharacterRepository.map[playerList.elementAt(p).character]!.color,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  CharacterRepository.map[playerList.elementAt(p).character]!.iconPath,
                                                  height: 26,
                                                  colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                                                ),
                                                Text(
                                                  '${playerList.elementAt(p).level}',
                                                  style: const TextStyle(
                                                    color: Constants.secondaryColor,
                                                    fontSize: 14,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                )
                                              ]
                                            ),
                                            Text(
                                              playerList.elementAt(p).name,
                                              style: const TextStyle(
                                                color: Constants.secondaryColor, 
                                                fontSize: 14,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // ContainerPlayer(
                              //     name: playerList.elementAt(p).name,
                              //     color: CharacterRepository.map[playerList.elementAt(p).character]!.color,
                              //     iconPath: CharacterRepository.map[playerList.elementAt(p).character]!.iconPath,
                              //     level: playerList.elementAt(p).level,
                              // ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
          )
      ),
    );
  }
}