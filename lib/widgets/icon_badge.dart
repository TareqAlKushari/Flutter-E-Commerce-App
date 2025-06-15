// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconBadge extends StatefulWidget {
  IconData icon;
  double size;
  Color? color;

  IconBadge({Key? key, required this.icon, required this.size})
      : super(key: key);

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          widget.icon,
          size: widget.size,
          // ignore: unnecessary_null_in_if_null_operators
          color: widget.color ?? null,
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 12.0,
            width: 12.0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.circular(6),
              ),
              height: 7.0,
              width: 7.0,
            ),
          ),
        ),
      ],
    );
  }
}
