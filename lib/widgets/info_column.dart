import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String subText;

  const InfoColumn({
    super.key,
    required this.icon,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Icon(
          icon,
          size: 16,
        ),
        Text(mainText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        Text(
          subText,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
      ]),
    );
  }
}
