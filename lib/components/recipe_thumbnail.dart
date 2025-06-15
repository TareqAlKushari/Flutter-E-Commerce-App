import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  final Map card;

  const RecipeThumbnail({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "${card["dishImage"]}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${card["title"]}",
            maxLines: 1,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            "${card["duration"]}",
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
