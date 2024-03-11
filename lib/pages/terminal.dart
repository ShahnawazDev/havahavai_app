import 'package:flutter/material.dart';
import 'package:havahavai_app/widgets/teminal_button.dart';

class Terminal extends StatefulWidget {
  const Terminal({super.key});

  @override
  State<Terminal> createState() => _TerminalState();
}

class _TerminalState extends State<Terminal> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Terminal map",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: <Widget>[
              TerminalButton(
                  terminalNumber: 1,
                  currentTerminal: currentTerminal,
                  setTerminal: (int terminalNumber) {
                    setState(() {
                      currentTerminal = terminalNumber;
                    });
                  }),
              const SizedBox(width: 10),
              TerminalButton(
                  terminalNumber: 2,
                  currentTerminal: currentTerminal,
                  setTerminal: (int terminalNumber) {
                    setState(() {
                      currentTerminal = terminalNumber;
                    });
                  }),
              const SizedBox(width: 10),
              TerminalButton(
                  terminalNumber: 3,
                  currentTerminal: currentTerminal,
                  setTerminal: (int terminalNumber) {
                    setState(() {
                      currentTerminal = terminalNumber;
                    });
                  }),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    image: AssetImage('assets/images/map.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 130.0,
                    vertical: 30.0,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text('View', style: TextStyle(fontSize: 12)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
