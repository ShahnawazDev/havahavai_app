import 'package:flutter/material.dart';

class NavigationButtonsRow extends StatelessWidget {
  final Function(int) onButtonPressed;
  final int currentIndex;

  const NavigationButtonsRow(
      {super.key, required this.onButtonPressed, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final selectedButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );
    final defaultButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.grey[200],
      foregroundColor: Colors.black,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildButtons(selectedButtonStyle, defaultButtonStyle),
    );
  }

  List<Widget> _buildButtons(
      ButtonStyle selectedStyle, ButtonStyle defaultStyle) {
    return List<Widget>.generate(4, (index) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: TextButton(
            style: currentIndex == index ? selectedStyle : defaultStyle,
            onPressed: () => onButtonPressed(index),
            child: Text(_buttonText(index)),
          ),
        ),
      );
    });
  }

  String _buttonText(int index) {
    switch (index) {
      case 0:
        return "Transport";
      case 1:
        return "Terminal";
      case 2:
        return "Forex";
      case 3:
        return "Contact info";
      default:
        return "";
    }
  }
}
