import 'package:flutter/material.dart';
import 'package:havahavai_app/pages/contact.dart';
import 'package:havahavai_app/pages/forex.dart';
import 'package:havahavai_app/pages/terminal.dart';
import 'package:havahavai_app/pages/transport.dart';

import '../widgets/location_info_card.dart';
import '../widgets/navigation_buttons_row.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _sections = const [
    Transport(),
    Terminal(),
    Forex(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Dubai Airport -DXB',
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                children: [
                  Text(
                    'Dubai . 🇦🇪 ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    'United Arab Emirates',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const LocationInfoCard(),
              const SizedBox(
                height: 20,
              ),
              NavigationButtonsRow(
                currentIndex: _currentIndex,
                onButtonPressed: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              _sections[_currentIndex],
            ],
          ),
        ),
      ),
    );
  }
}
