import 'package:flutter/material.dart';

import '../data/data.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 64, 24, 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Your Communities',
                style: TextStyle(fontSize: 24, color: Style.color4),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mentors',
                style: TextStyle(fontSize: 14, color: Style.color3),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MentorTiles(),
                    MentorTiles(),
                    MentorTiles(),
                    MentorTiles(),
                    MentorTiles(),
                    MentorTiles(),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Spaces',
                style: TextStyle(fontSize: 14, color: Style.color3),
              ),
              Flexible(
                  child: ListView(
                children: const [
                  ForumTiles(),
                  ForumTiles(),
                  ForumTiles(),
                  ForumTiles(),
                  ForumTiles(),
                ],
              ))
            ]),
      ),
    );
  }
}

class MentorTiles extends StatelessWidget {
  const MentorTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.red),
        ),
        Text('Zachary'),
      ],
    );
  }
}

class ForumTiles extends StatelessWidget {
  const ForumTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Divider(),
            SizedBox(height: 8),
            Text(
              'Methods 3/4 - HELP!',
              style: TextStyle(
                  color: Style.color4,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              '122 replies - Last message 2 mins ago',
              style: TextStyle(color: Style.color2, fontSize: 14),
            ),
            SizedBox(height: 8),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 14),
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.chevron_right_rounded,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
