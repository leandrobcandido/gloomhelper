import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../models/player_ability_card.dart';
import '../constants.dart';
import '../models/player.dart';
import '../repositories/ability_card_repository.dart';
import '../repositories/isar_repository.dart';
import 'player_ability_card_edit_page.dart';

class PlayerAbilityCardPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;
  final Player player;

  const PlayerAbilityCardPage({super.key, required this.isarRepository, required this.isar, required this.player});

  @override
  State<PlayerAbilityCardPage> createState() => _PlayerAbilityCardPageState();
}

class _PlayerAbilityCardPageState extends State<PlayerAbilityCardPage> {

  showPlayerAbilityCardEditPage(Player player) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => PlayerAbilityCardEditPage(
          isarRepository: widget.isarRepository,
          isar: widget.isar,
          player: player
        ),
      ),
    ).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    List<PlayerAbilityCard> playerAbilityCardAvailableList = widget.player.playerAbilityCardList.where((element) => element.available == true).toList();

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showPlayerAbilityCardEditPage(widget.player);
          },
          child: Container(
            height: 40,
            color: Constants.secondaryColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Cartas Disponíveis',
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
            itemCount: playerAbilityCardAvailableList.length,
            itemBuilder: (context, index) {
              final playerAbilityCard = playerAbilityCardAvailableList[index];
              return Container(
                color: (index % 2) == 0 ? Constants.primaryListColor : Constants.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          AbilityCardRepository.getAbilityCard(widget.player.character, playerAbilityCard.number)!.name,
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
                            AbilityCardRepository.getAbilityCard(widget.player.character, playerAbilityCard.number)!.level,
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
                        child: Center(
                          child: Text(
                            '${AbilityCardRepository.getAbilityCard(widget.player.character, playerAbilityCard.number)!.initiative}',
                            style: const TextStyle(
                              color: Constants.secondaryColor,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
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