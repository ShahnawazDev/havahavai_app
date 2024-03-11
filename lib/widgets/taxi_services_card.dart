import 'package:flutter/material.dart';
import 'package:havahavai_app/widgets/taxi_service_card.dart';

class TaxiServicesCard extends StatelessWidget {
  const TaxiServicesCard({
    super.key,
  });

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
            "Taxi Services",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              TaxiServiceCard(
                serviceImagePath: 'assets/images/taxi_services/uber.png',
                cost: 4,
              ),
              TaxiServiceCard(
                serviceImagePath: 'assets/images/taxi_services/careem.png',
                cost: 4,
              ),
              TaxiServiceCard(
                serviceImagePath: 'assets/images/taxi_services/yango.png',
                cost: 3,
              ),
              TaxiServiceCard(
                serviceImagePath: 'assets/images/taxi_services/blacklane.png',
                cost: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
