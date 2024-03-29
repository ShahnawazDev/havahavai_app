import 'package:flutter/material.dart';

import 'info_column.dart';

class LocationInfoCard extends StatelessWidget {
  const LocationInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image.asset(
            'assets/images/dubai_airport.jpg',
            height: 335,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoColumn(
                        svgIcon: 'assets/icons/cloud.svg',
                        mainText: '19 C',
                        subText: 'Cloudy',
                      ),
                      InfoColumn(
                        svgIcon: 'assets/icons/calender.svg',
                        mainText: '30 Jan',
                        subText: 'Mon',
                      ),
                      InfoColumn(
                        svgIcon: 'assets/icons/time.svg',
                        mainText: '12:00',
                        subText: 'Local time',
                      ),
                      InfoColumn(
                        svgIcon: 'assets/icons/currency.svg',
                        mainText: 'AED',
                        subText: '1\$ = 3.67 AED',
                      ),
                    ],
                  ),
                  const Divider(),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.directions,
                              color: Colors.blue, size: 15),
                          label: const Text(
                            'Get direction',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const VerticalDivider(),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.call,
                              color: Colors.blue, size: 15),
                          label: const Text(
                            'Call airport',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
