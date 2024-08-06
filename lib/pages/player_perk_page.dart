import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/player.dart';
import '../repositories/isar_repository.dart';
import '../repositories/perk_repository.dart';

class PlayerPerkPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;

  const PlayerPerkPage({super.key, required this.isarRepository, required this.isar, required this.player});

  @override
  State<PlayerPerkPage> createState() => _PlayerPerkPageState();
}

class _PlayerPerkPageState extends State<PlayerPerkPage> {
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
                'Vantagens',
                style: TextStyle(
                  color: Constants.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.player.playerPerkList.length,
            itemBuilder: (context, index) {
              final playerPerk = widget.player.playerPerkList.elementAt(index);
              final perk = PerkRepository.getPerk(widget.player.character, playerPerk.number); 
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          perk!.description,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 14,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      if (perk.iconPathList != null) 
                        for(int i = 0; i < perk.iconPathList!.length; i++)
                          SizedBox(
                            width: 30,
                            child: SvgPicture.asset(perk.iconPathList![i], height: 24),
                          ),
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: playerPerk.unlocked,
                          activeColor: Constants.checkboxActiveColor,
                          checkColor: Constants.secondaryColor,
                          side: const BorderSide(
                            color: Constants.secondaryColor
                          ),
                          onChanged: (value) {
                            setState(() {
                              playerPerk.unlocked = value!;
                              
                              for(int i = 0; i < perk.perkRuleList.length; i++) {
                                final perkRule = perk.perkRuleList[i];
                                if (playerPerk.unlocked) {
                                  widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity = widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity + perkRule.increment;
                                  widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity = widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity - perkRule.decrement;
                                } else {
                                  widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity = widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity - perkRule.increment;
                                  widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity = widget.player.playerAttackCardList.elementAt(perkRule.number-1).quantity + perkRule.decrement;  
                                }
                                widget.isarRepository.savePlayerAttackCard(widget.player.playerAttackCardList.elementAt(perkRule.number-1), widget.isar);
                              }
                              
                            });
                            widget.isarRepository.savePlayerPerk(playerPerk, widget.isar);
                          }
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