import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import '../models/player.dart';
import '../repositories/character_repository.dart';
import '../repositories/isar_repository.dart';
import '../repositories/player_repository.dart';
import '../constants.dart';

class NewCampaignPage extends StatefulWidget {
  final IsarRepository isarRepository;
  final Isar isar;

  const NewCampaignPage({super.key, required this.isarRepository, required this.isar});

  @override
  State<NewCampaignPage> createState() => _NewCampaignPageState();
}

class _NewCampaignPageState extends State<NewCampaignPage> {
  final _groupName = TextEditingController();
  final _playerNameVoidwarden = TextEditingController();
  final _playerNameRedGuard = TextEditingController();
  final _playerNameHatchet = TextEditingController();
  final _playerNameDemolitionist = TextEditingController();

  Future<void> showErrorDialog(BuildContext context, String message) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Constants.primaryColor,
          actionsAlignment: MainAxisAlignment.center,
          title: const Icon(
            Icons.warning,
            size: 36,
            color: Constants.secondaryColor,
          ),
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Constants.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Constants.secondaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                )
              ),
              child: const Text(
                'OK',
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
          ],
        );
      },
    );
  }

  createCampaign() async {
    if (_groupName.text.isNotEmpty) {
      List<Player> playerList = [];

      if (_playerNameVoidwarden.text.isNotEmpty) {
        playerList.add(PlayerRepository.getPlayer(_playerNameVoidwarden.text, 'voidwarden'));
      }

      if (_playerNameRedGuard.text.isNotEmpty) {
        playerList.add(PlayerRepository.getPlayer(_playerNameRedGuard.text, 'redGuard'));
      }

      if (_playerNameHatchet.text.isNotEmpty) {
        playerList.add(PlayerRepository.getPlayer(_playerNameHatchet.text, 'hatchet'));
      }

      if (_playerNameDemolitionist.text.isNotEmpty) {
        playerList.add(PlayerRepository.getPlayer(_playerNameDemolitionist.text, 'demolitionist'));
      }

      if (playerList.length > 1) {
        widget.isarRepository.insertCampaign(_groupName.text, playerList, widget.isar);
        Navigator.of(context).pop();
      } else {
        showErrorDialog(context, 'O grupo precisa de dois ou mais jogadores');
      }
    } else {
      showErrorDialog(context, 'O grupo precisa de um nome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Nova Campanha',
          style: TextStyle(
            color: Constants.secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        actions: [
          IconButton(
            onPressed: () {
              createCampaign();
            },
            iconSize: 28,
            icon: const Icon(Icons.save_sharp),
            style: const ButtonStyle(
              iconColor: MaterialStatePropertyAll(Constants.secondaryColor)
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nome do Grupo',
                    style: TextStyle(
                      color: Constants.secondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextFormField(
                    controller: _groupName,
                    style: const TextStyle(
                      color: Constants.secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Constants.secondaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: CharacterRepository.map['voidwarden']!.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          CharacterRepository.map['voidwarden']!.name,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          CharacterRepository.map['voidwarden']!.iconPath,
                          height: 26,
                          colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _playerNameVoidwarden,
                      style: const TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Constants.secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: CharacterRepository.map['redGuard']!.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          CharacterRepository.map['redGuard']!.name,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          CharacterRepository.map['redGuard']!.iconPath,
                          height: 26,
                          colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _playerNameRedGuard,
                      style: const TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Constants.secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: CharacterRepository.map['hatchet']!.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          CharacterRepository.map['hatchet']!.name,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          CharacterRepository.map['hatchet']!.iconPath,
                          height: 26,
                          colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _playerNameHatchet,
                      style: const TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Constants.secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: CharacterRepository.map['demolitionist']!.color,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          CharacterRepository.map['demolitionist']!.name,
                          style: const TextStyle(
                            color: Constants.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          CharacterRepository.map['demolitionist']!.iconPath,
                          height: 26,
                          colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _playerNameDemolitionist,
                      style: const TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Constants.secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}