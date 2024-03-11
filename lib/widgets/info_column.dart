import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoColumn extends StatelessWidget {
  final String mainText;
  final String subText;
  final String svgIcon;

  const InfoColumn({
    super.key,
    required this.svgIcon,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        SvgPicture.asset(
          svgIcon,
          height: 16,
          width: 16,
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
