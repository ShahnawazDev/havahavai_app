import 'package:flutter/material.dart';

import '../widgets/contact_row.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.directions),
                    label: const Text('Get Direction'),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    label: const Text('Call airport'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
