import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign.dart';
import '../models/campaign_item.dart';
import '../models/player.dart';
import '../repositories/character_repository.dart';
import '../repositories/isar_repository.dart';
import 'campaign_event_page.dart';
import 'campaign_item_page.dart';
import 'campaign_scenario_page.dart';
import 'campaign_secret_page.dart';
import 'campaign_treasure_page.dart';
import 'player_page.dart';

class CampaignPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Campaign campaign;

  const CampaignPage({super.key, required this.isarRepository, required this.isar, required this.campaign});

  @override
  State<CampaignPage> createState() => _CampaignPageState();
}

class _CampaignPageState extends State<CampaignPage> {
  int currentPage = 0;
  late PageController page;

  @override
  void initState() {
    super.initState();
    page = PageController(
      initialPage: currentPage
    );
  }

  setCurrentPage(page) {
    setState(() {
      currentPage = page;
    });
  }
  
  showPlayerPage(Player player, IsarLinks<CampaignItem> campaignItemList) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => PlayerPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
          player: player,
          campaignItemList: campaignItemList,
          campaign: widget.campaign
        ),
      ),
    ).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.campaign.teamName,
          style: const TextStyle(
            color: Constants.secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),        
        backgroundColor: Constants.primaryColor,
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
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(var p = 0; p < widget.campaign.playerList.length; p++)
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => showPlayerPage(
                      widget.campaign.playerList.elementAt(p),
                      widget.campaign.campaignItemList
                    ),
                    child: Container(
                      color: CharacterRepository.map[widget.campaign.playerList.elementAt(p).character]?.color,
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
                                    CharacterRepository.map[widget.campaign.playerList.elementAt(p).character]!.iconPath,
                                    height: 30,
                                    colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                                  ),
                                  Text(
                                    '${widget.campaign.playerList.elementAt(p).level}',
                                    style: const TextStyle(
                                      color: Constants.secondaryColor,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ]
                              ),
                              Text(
                                widget.campaign.playerList.elementAt(p).name,
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
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              onPageChanged: setCurrentPage,
              children: [
                CampaignScenarioPage(isarRepository: widget.isarRepository, isar: widget.isar, campaignScenarioList: widget.campaign.campaignScenarioList),
                CampaignEventPage(isarRepository: widget.isarRepository, isar: widget.isar, campaignEventList: widget.campaign.campaignEventList),
                CampaignTreasurePage(isarRepository: widget.isarRepository, isar: widget.isar, campaignTreasureList: widget.campaign.campaignTreasureList),
                CampaignSecretPage(isarRepository: widget.isarRepository, isar: widget.isar, campaignSecretList: widget.campaign.campaignSecretList),
                CampaignItemPage(isarRepository: widget.isarRepository, isar: widget.isar, campaign: widget.campaign),
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        selectedItemColor: Constants.primaryColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/campaign/scenario.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/campaign/scenario.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Cenários',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/campaign/event.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/campaign/event.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Eventos',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/campaign/treasure.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/campaign/treasure.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Tesouros',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/campaign/secret.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/campaign/secret.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Segredos',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/campaign/item.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/campaign/item.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Itens',
          ),
        ],
        onTap: (index) {
          page.animateToPage(
            index, 
            duration: const Duration(milliseconds: 400), 
            curve: Curves.ease
          );
        },
      ),
    );
  }
}