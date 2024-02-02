import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Text eventCardTextTitle;
  final Text eventCardTextLocation;
  final Text eventCardTextTime;
  const EventCard({
    super.key,
    required this.eventCardTextTitle,
    required this.eventCardTextLocation,
    required this.eventCardTextTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [eventCardTextTitle, eventCardTextLocation],
            ),
            eventCardTextTime
          ],
        ));
  }
}
