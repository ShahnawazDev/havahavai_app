import 'package:flutter/material.dart';

class TaxiServiceCard extends StatelessWidget {
  const TaxiServiceCard({
    super.key,
    required this.serviceImagePath,
    required this.cost,
  });
  final String serviceImagePath;
  final int cost;

  List<Widget> generateCostIndicator(int cost) {
    List<Widget> costIndicator = [];
    for (int i = 0; i < 5; i++) {
      costIndicator.add(
        Text(
          '\$',
          style: TextStyle(
              color: i < cost ? Colors.black54 : Colors.black26, fontSize: 11),
        ),
      );
    }
    return costIndicator;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset(
              serviceImagePath,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: generateCostIndicator(cost),
            ),
          ),
        ],
      ),
    );
  }
}
