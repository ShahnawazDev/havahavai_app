import 'package:flutter/material.dart';

class TerminalButton extends StatelessWidget {
  final int terminalNumber;
  final int currentTerminal;
  final Function setTerminal;

  const TerminalButton(
      {super.key,
      required this.terminalNumber,
      required this.currentTerminal,
      required this.setTerminal});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(40, 40),
        backgroundColor:
            currentTerminal == terminalNumber ? Colors.black : Colors.grey[200],
        foregroundColor:
            currentTerminal == terminalNumber ? Colors.white : Colors.black,
      ),
      onPressed: () => setTerminal(terminalNumber),
      child: Text(
        'T$terminalNumber',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
