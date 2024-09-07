import 'package:flutter/material.dart';

import '../../widgets/expandable_text_tile.dart';

class Forex extends StatelessWidget {
  const Forex({super.key});

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
            "Forex",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ExpandableTextTile(
            title: 'Travelex',
            text: 'Term.nal 3-'
                'Airside Dept Downtown. Concourse B.'
                'Terminal 3, beside Winston Smoking room',
          ),
          Divider(),
          ExpandableTextTile(
            title: 'Al Ansari Exchange',
            text: 'Terminal 3-'
                'Airside Dept Downtown. Concourse B.'
                'Terminal 3, beside Winston Smoking room',
          ),
          Divider(),
          ExpandableTextTile(
            title: 'Emirates NBD',
            text: 'Terminal 3-'
                'Airside Dept Downtown. Concourse B.'
                'Terminal 3, beside Winston Smoking room',
          ),
        ],
      ),
    );
  }
}
