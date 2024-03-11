import 'package:flutter/material.dart';
import 'package:havahavai_app/widgets/teminal_button.dart';

class SelfParking extends StatefulWidget {
  const SelfParking({super.key});

  @override
  State<SelfParking> createState() => _SelfParkingState();
}


class _SelfParkingState extends State<SelfParking> {
  int currentTerminal = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Public Transport",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            TerminalButton(
              terminalNumber: 1,
              currentTerminal: currentTerminal,
              setTerminal: (int terminalNumber) {
                setState(() {
                  currentTerminal = terminalNumber;
                });
              },
            ),
            const SizedBox(width: 8.0),
            TerminalButton(
              terminalNumber: 2,
              currentTerminal: currentTerminal,
              setTerminal: (int terminalNumber) {
                setState(() {
                  currentTerminal = terminalNumber;
                });
              },
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                const Icon(Icons.directions_bike),
                const Expanded(child: Text('Two wheeler')),
                const Text('AED 50/day'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.directions_car),
                const Expanded(child: Text('Car Parking')),
                const Text('AED 100/day'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.directions_car),
                const Expanded(child: Text('Electric Car Parking')),
                const Text('AED 150/day'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
