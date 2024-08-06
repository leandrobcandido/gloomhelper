import 'package:flutter/material.dart';
import '../models/player_attack_card.dart';
import '../constants.dart';
import '../models/player.dart';
import '../repositories/attack_card_repository.dart';

class PlayerAttackCardPage extends StatefulWidget {
  final Player player;

  const PlayerAttackCardPage({super.key, required this.player});

  @override
  State<PlayerAttackCardPage> createState() => _PlayerAttackCardPageState();
}

class _PlayerAttackCardPageState extends State<PlayerAttackCardPage> {
  @override
  Widget build(BuildContext context) {
    List<PlayerAttackCard> playerAttackCardList = widget.player.playerAttackCardList.where((element) => element.quantity > 0).toList();

    int countRight = playerAttackCardList.length ~/ 2;
    int countLeft = playerAttackCardList.length - countRight;

    int quantity = 0;
    for(int i = 0; i < playerAttackCardList.length; i++) {
      quantity = quantity + playerAttackCardList[i].quantity;
    }

    return Column(
      children: [
        Container(
          height: 40,
          color: Constants.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Modificadores de Ataque ($quantity)',
                style: const TextStyle(
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
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 0),
            itemCount: countLeft,
            itemBuilder: (context, index) {
              
              PlayerAttackCard playerAttackCardLeft = playerAttackCardList[index * 2];
              PlayerAttackCard? playerAttackCardRight;
              if (index < countRight) {
                playerAttackCardRight = playerAttackCardList[index * 2 + 1];
              }
          
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Image.asset(AttackCardRepository.getAttackCard(widget.player.character, playerAttackCardLeft.number)!.imagePath),
                            ),
                            Text(
                              'x${playerAttackCardLeft.quantity}',
                              style: const TextStyle(
                                color: Constants.secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      (playerAttackCardRight == null)
                      ? const Flexible(flex: 1, child: SizedBox(height: 0, width: 0))
                      : 
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Image.asset(AttackCardRepository.getAttackCard(widget.player.character, playerAttackCardRight.number)!.imagePath),
                            ),
                            Text(
                              'x${playerAttackCardRight.quantity}',
                              style: const TextStyle(
                                color: Constants.secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
          
            }
          ),
        )
      ],
    );
  } 
  
}