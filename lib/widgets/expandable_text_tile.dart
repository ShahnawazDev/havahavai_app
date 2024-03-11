import 'package:flutter/material.dart';

class ExpandableTextTile extends StatefulWidget {
  final String title;
  final String text;

  const ExpandableTextTile({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<ExpandableTextTile> createState() => _ExpandableTextTileState();
}

class _ExpandableTextTileState extends State<ExpandableTextTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ],
        ),
        if (isExpanded)
          Text(
            widget.text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
      ],
    );
  }
}
