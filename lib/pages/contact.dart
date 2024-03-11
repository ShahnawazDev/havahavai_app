import 'package:flutter/material.dart';

import '../widgets/contact_row.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Contact airport",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ContactRow(title: 'Call airport'),
          Divider(),
          ContactRow(title: 'Lost and Found'),
          Divider(),
          ContactRow(title: 'Transport'),
          Divider(),
          ContactRow(title: 'Head Office'),
        ],
      ),
    );
  }
}
