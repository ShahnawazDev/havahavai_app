import 'package:flutter/material.dart';

import '../widgets/public_transport_card.dart';
import '../widgets/self_parking.dart';
import '../widgets/taxi_services_card.dart';

class Transport extends StatelessWidget {
  const Transport({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaxiServicesCard(),
        PublicTransportCard(),
        SelfParking(),
      ],
    );
  }
}
