import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/campaign.dart';
import '../models/campaign_item.dart';
import '../models/player.dart';
import '../repositories/ability_card_repository.dart';
import '../repositories/character_repository.dart';
import '../repositories/isar_repository.dart';
import 'player_attack_card_page.dart';
import 'player_battle_goal_page.dart';
import 'player_ability_card_page.dart';
import 'player_item_page.dart';
import 'player_perk_page.dart';

class PlayerPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;
  final Campaign campaign;
  final IsarLinks<CampaignItem> campaignItemList;

  const PlayerPage({
    super.key,
    required this.isarRepository,
    required this.isar, 
    required this.player, 
    required this.campaignItemList,
    required this.campaign
  });

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
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
            color: CharacterRepository.map[widget.player.character]?.color,
            height: 80,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              'Ouro',
                              style: TextStyle(
                                color: Constants.secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.player.gold--;
                                    if (widget.player.gold < 0) {
                                      widget.player.gold = 0;
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                onLongPress: () {
                                  setState(() {
                                    widget.player.gold -= 10;
                                    if (widget.player.gold < 0) {
                                      widget.player.gold = 0;
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                child: const Icon(
                                  Icons.remove_sharp,
                                  size: 32,
                                  color: Constants.secondaryColor,
                                )
                              ),
                              Text(
                                '${widget.player.gold}',
                                style: const TextStyle(
                                  color: Constants.secondaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.player.gold++;
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                onLongPress: () {
                                  setState(() {
                                    widget.player.gold += 10;
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                child: const Icon(
                                  Icons.add_sharp,
                                  size: 32,
                                  color: Constants.secondaryColor,
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(width: 20,),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              'Experiência',
                              style: TextStyle(
                                color: Constants.secondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.player.xp--;
                                    if (widget.player.xp < 0) {
                                      widget.player.xp = 0;
                                    }
                                    widget.player.level = (widget.player.xp / 10).truncate() + 1;
                                    if (widget.player.level > 9) {
                                      widget.player.level = 9;
                                    }                                    

                                    for (int i = 0; i < widget.player.playerAbilityCardList.length; i++) {
                                      final playerAbilityCard = widget.player.playerAbilityCardList.elementAt(i);
                                      int? level = int.tryParse(AbilityCardRepository.getAbilityCard(widget.player.character, playerAbilityCard.number)!.level);
                                      level ??= 0;
                                      if (level > widget.player.level) {
                                        widget.player.playerAbilityCardList.elementAt(i).available = false;
                                        widget.isarRepository.savePlayerAbilityCard(widget.player.playerAbilityCardList.elementAt(i), widget.isar);
                                      }
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                onLongPress: () {
                                  setState(() {
                                    widget.player.xp -= 10;
                                    if (widget.player.xp < 0) {
                                      widget.player.xp = 0;
                                    }
                                    widget.player.level = (widget.player.xp / 10).truncate() + 1;
                                    if (widget.player.level > 9) {
                                      widget.player.level = 9;
                                    }

                                    for (int i = 0; i < widget.player.playerAbilityCardList.length; i++) {
                                      final playerAbilityCard = widget.player.playerAbilityCardList.elementAt(i);
                                      int? level = int.tryParse(AbilityCardRepository.getAbilityCard(widget.player.character, playerAbilityCard.number)!.level);
                                      level ??= 0;
                                      if (level > widget.player.level) {
                                        widget.player.playerAbilityCardList.elementAt(i).available = false;
                                        widget.isarRepository.savePlayerAbilityCard(widget.player.playerAbilityCardList.elementAt(i), widget.isar);
                                      }
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                child: const Icon(
                                  Icons.remove_sharp,
                                  size: 32,
                                  color: Constants.secondaryColor,
                                )
                              ),
                              Text(
                                '${widget.player.xp}',
                                style: const TextStyle(
                                  color: Constants.secondaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.player.xp++;
                                    widget.player.level = (widget.player.xp / 10).truncate() + 1;
                                    if (widget.player.level > 9) {
                                      widget.player.level = 9;
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                onLongPress: () {
                                  setState(() {
                                    widget.player.xp += 10;
                                    widget.player.level = (widget.player.xp / 10).truncate() + 1;
                                    if (widget.player.level > 9) {
                                      widget.player.level = 9;
                                    }
                                  });
                                  widget.isarRepository.savePlayer(widget.player, widget.isar);
                                },
                                child: const Icon(
                                  Icons.add_sharp,
                                  size: 32,
                                  color: Constants.secondaryColor,
                                )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            child: PageView(
              controller: page,
              onPageChanged: setCurrentPage,
              children: [
                PlayerAbilityCardPage(isarRepository: widget.isarRepository, isar: widget.isar, player: widget.player),
                PlayerItemPage(isarRepository: widget.isarRepository, isar: widget.isar, player: widget.player, campaignItemList: widget.campaignItemList),
                PlayerPerkPage(isarRepository: widget.isarRepository, isar: widget.isar, player: widget.player),
                PlayerAttackCardPage(player: widget.player),
                PlayerBattleGoalPage(isarRepository: widget.isarRepository, isar: widget.isar, player: widget.player),
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
              'assets/player/card.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/player/card.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Cartas',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/player/item.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/player/item.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Itens',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/player/perk.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/player/perk.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Vantagens',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/player/attack.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/player/attack.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Modif. Ataque',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/player/goal.svg',
              height: 22,
              colorFilter: ColorFilter.mode(Constants.primaryColor.withAlpha(150), BlendMode.srcIn)
            ),
            activeIcon: SvgPicture.asset(
              'assets/player/goal.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(Constants.primaryColor, BlendMode.srcIn)
            ),
            label: 'Objetivos',
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