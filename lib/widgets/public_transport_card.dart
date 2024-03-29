import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicTransportCard extends StatelessWidget {
  const PublicTransportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Public Transport",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/metro.svg',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: Text(
                  "Metro",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                '6am - 10pm',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {},
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/bus.svg',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: Text(
                  "Bus",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                '6am - 10pm',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
