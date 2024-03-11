import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
            minimumSize: MaterialStateProperty.all(const Size(60, 40)),
            backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
          ),
        ),
      ],
    );
  }
}
