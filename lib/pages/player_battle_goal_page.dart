import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import '../constants.dart';
import '../models/player.dart';
import '../repositories/isar_repository.dart';

class PlayerBattleGoalPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;

  const PlayerBattleGoalPage({super.key, required this.isarRepository, required this.isar, required this.player});

  @override
  State<PlayerBattleGoalPage> createState() => _PlayerBattleGoalPageState();
}

class _PlayerBattleGoalPageState extends State<PlayerBattleGoalPage> {
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
                'Objetivos de Batalha',
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
            itemCount: widget.player.playerBattleGoalList.length,
            itemBuilder: (context, index) {
              
              final playerBattleGoal = widget.player.playerBattleGoalList.elementAt(index);

              return Container(
                height: 50,
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Checkbox(
                      value: playerBattleGoal.checkMark1,
                      activeColor: Constants.checkboxActiveColor,
                      checkColor: Constants.secondaryColor,
                      side: const BorderSide(
                        color: Constants.secondaryColor
                      ),
                      onChanged: (value) {
                        setState(() {
                          playerBattleGoal.checkMark1 = value!;
                          if (!playerBattleGoal.checkMark1 && playerBattleGoal.checkMark2) {
                            playerBattleGoal.checkMark1 = true;
                          }
                          if (playerBattleGoal.checkMark1 && index > 0) {
                            final playerBattleGoalPrevious = widget.player.playerBattleGoalList.elementAt(index-1);
                            if (!playerBattleGoalPrevious.checkMark3) {
                              playerBattleGoal.checkMark1 = false;
                            }
                          }
                        });
                        widget.isarRepository.savePlayerBattleGoal(playerBattleGoal, widget.isar);
                      }
                    ),
                    Checkbox(
                      value: playerBattleGoal.checkMark2,
                      activeColor: Constants.checkboxActiveColor,
                      checkColor: Constants.secondaryColor,
                      side: const BorderSide(
                        color: Constants.secondaryColor
                      ),
                      onChanged: (value) {
                        setState(() {
                          playerBattleGoal.checkMark2 = value!;
                          if (!playerBattleGoal.checkMark2 && playerBattleGoal.checkMark3) {
                            playerBattleGoal.checkMark2 = true;
                          }
                          if (playerBattleGoal.checkMark2 && !playerBattleGoal.checkMark1) {
                            playerBattleGoal.checkMark2 = false;
                          }
                        });
                        widget.isarRepository.savePlayerBattleGoal(playerBattleGoal, widget.isar);
                      }
                    ),
                    Checkbox(
                      value: playerBattleGoal.checkMark3,
                      activeColor: Constants.checkboxActiveColor,
                      checkColor: Constants.secondaryColor,
                      side: const BorderSide(
                        color: Constants.secondaryColor
                      ),
                      onChanged: (value) {
                        setState(() {
                          playerBattleGoal.checkMark3 = value!;
                          if (playerBattleGoal.checkMark3 && !playerBattleGoal.checkMark2) {
                            playerBattleGoal.checkMark3 = false;
                          }
                          if (!playerBattleGoal.checkMark3 && index < (widget.player.playerBattleGoalList.length-1)) {
                            final playerBattleGoalNext = widget.player.playerBattleGoalList.elementAt(index+1);
                            if (playerBattleGoalNext.checkMark1) {
                              playerBattleGoal.checkMark3 = true;
                            }
                          }
                        });
                        widget.isarRepository.savePlayerBattleGoal(playerBattleGoal, widget.isar);
                      }
                    ),
                    SvgPicture.asset(
                      'assets/player/perk.svg',
                      height: 22,
                      colorFilter: ColorFilter.mode(
                        (playerBattleGoal.checkMark3) ? Constants.secondaryColor : Constants.secondaryColor.withAlpha(30), 
                        BlendMode.srcIn
                      )
                    ),
                  ]
                ),
              );
            }
          ),
        ),
      ],
    );
  }
}