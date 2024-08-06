import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double toolbarHeight;
  final List<Widget>? actions;
  final Widget? leading;

  const AppBarDefault({super.key, required this.title, required this.toolbarHeight, this.actions, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Constants.secondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Constants.primaryColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class ContainerPlayer extends StatelessWidget {
  final String name;
  final Color color;
  final String iconPath;
  final int level;

  const ContainerPlayer({
    super.key, 
    this.name = '',
    this.color = Constants.primaryColor,
    required this.iconPath,
    required this.level
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(  
      flex: 1,
      child: Container(
        color: color,
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
                      iconPath,
                      height: 26,
                      colorFilter: const ColorFilter.mode(Constants.secondaryColor, BlendMode.srcIn),
                    ),
                    Text(
                      '$level',
                      style: const TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ]
                ),
                Text(
                  name,
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
    );
  }
}

class TextFormFieldDefault extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Color color;
  final String labelText;

  const TextFormFieldDefault({
    super.key, 
    required this.controller, 
    this.validator, 
    required this.color,
    required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: color,
          fontSize: 16,
        ),
      ),
      validator: validator,
    );
  }
}