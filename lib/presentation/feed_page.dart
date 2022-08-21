import 'package:flutter/material.dart';
import 'package:govhack22/data/activities.dart';

import '../data/data.dart';
import 'event_page.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    List<Widget> events = governmentActivities
            .map((a) => activityCard(a, screenWidth, context, true))
            .toList() +
        activities
            .map((a) => activityCard(a, screenWidth, context, false))
            .toList();

    events.shuffle();

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 64, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What's on near you",
                    style: TextStyle(fontSize: 24, color: Style.color4),
                  ),
                  Text(
                    userData.school.name,
                    style: TextStyle(
                        fontSize: 14, color: Style.color4.withOpacity(0.6)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(child: ListView(padding: EdgeInsets.zero, children: events))
        ],
      ),
    );
  }
}

Widget activityCard(
    Activity activity, double maxWidth, context, bool isGovernment) {
  return GestureDetector(
    onTap: () => navigateToEvent(context, activity),
    child: Card(
      color: isGovernment ? Style.color1 : Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 300,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 4),
          Text(
            activity.name,
            style: const TextStyle(
                color: Style.color4, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          isGovernment
              ? const Text(
                  'Recommended by the Victorian Government',
                  style: TextStyle(
                      color: Style.color2,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              : SizedBox(),
          const SizedBox(height: 16),
          Expanded(
              child: Image(
            width: maxWidth,
            image: NetworkImage(activity.imgUrl),
            fit: BoxFit.cover,
          )),
          const SizedBox(height: 16),
          Text(activity.description),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '7:00pm Monday 22 Aug',
                style: TextStyle(color: Style.color2),
              ),
              Text(
                'Find out more',
                style:
                    TextStyle(color: Style.color4, fontWeight: FontWeight.bold),
              )
            ],
          )
        ]),
      ),
    ),
  );
}

navigateToEvent(context, Activity activity) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => EventPage(
        activity: activity,
      ),
    ),
  );
}
