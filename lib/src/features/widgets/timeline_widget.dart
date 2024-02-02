import 'package:flutter/cupertino.dart';
import 'package:project1/src/features/widgets/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineWidget extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Text indicatorWidget;
  final Text eventCardTextTitle;
  final Text eventCardTextLocation;
  final Text eventCardTextTime;

  const TimelineWidget({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.indicatorWidget,
    required this.eventCardTextTitle,
    required this.eventCardTextLocation,
    required this.eventCardTextTime,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: const LineStyle(
          color: Color(0xFFDFE6ED),
        ),
        indicatorStyle: IndicatorStyle(
          width: 56,
          height: 56,
          color: isPast ? const Color(0xFFFFD337) : const Color(0xFFF1F6FB),
          indicator: Container(
            decoration: ShapeDecoration(
              color: isPast ? const Color(0xFFFFD337) : const Color(0xFFF1F6FB),
              shape: const OvalBorder(),
            ),
            child: Center(child: indicatorWidget),
          ),
        ),
        endChild: EventCard(
          eventCardTextLocation: eventCardTextLocation,
          eventCardTextTime: eventCardTextTime,
          eventCardTextTitle: eventCardTextTitle,
        ),
      ),
    );
  }
}
