import 'package:flutter/material.dart';

class NextBackButton extends StatelessWidget {
  final String buttonTitle;
  final Icon buttonIcon;
  final Color buttonIconColor;
  final Color buttonBackgroundColor;
  final Function buttonLogic;
  const NextBackButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonIcon,
      required this.buttonIconColor,
      required this.buttonBackgroundColor,
      required this.buttonLogic});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonBackgroundColor)),
        onPressed: () {
          buttonLogic();
        },
        icon: Icon(
          buttonIcon.icon,
          size: 18,
          color: buttonIconColor,
        ),
        label: Text(
          buttonTitle,
          style: TextStyle(color: buttonIconColor, fontSize: 18),
        ));
  }
}
