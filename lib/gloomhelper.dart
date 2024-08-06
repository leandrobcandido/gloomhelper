import 'package:flutter/material.dart';
import 'package:gloomhelper/constants.dart';
import 'package:isar/isar.dart';
import 'pages/home_page.dart';
import 'repositories/isar_repository.dart';

class Gloomhelper extends StatelessWidget {
  final Isar isar;
  const Gloomhelper({super.key, required this.isar});

  @override
  Widget build(BuildContext context) {
    final isarRepository = IsarRepository();

    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      home: HomePage(isarRepository: isarRepository, isar: isar),
    );
  }
}