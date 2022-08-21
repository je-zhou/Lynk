import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/data.dart';

class JobPage extends StatelessWidget {
  const JobPage({Key? key}) : super(key: key);

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
              'Opportunity Board',
              style: TextStyle(fontSize: 24, color: Style.color4),
            ),
            const SizedBox(height: 32),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const Text(
                    'Recommended for you',
                    style: TextStyle(
                        color: Style.color4, fontWeight: FontWeight.bold),
                  ),
                  OpportunityTile(),
                  OpportunityTile(),
                  OpportunityTile(),
                  const SizedBox(height: 16),
                  const Text(
                    'Recommended by your instructors',
                    style: TextStyle(
                        color: Style.color4, fontWeight: FontWeight.bold),
                  ),
                  OpportunityTile(),
                  OpportunityTile(),
                  const SizedBox(height: 16),
                  const Text(
                    'More near you',
                    style: TextStyle(
                        color: Style.color4, fontWeight: FontWeight.bold),
                  ),
                  OpportunityTile(),
                  OpportunityTile(),
                  OpportunityTile(),
                  OpportunityTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpportunityTile extends StatelessWidget {
  const OpportunityTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('[OPPORTUNITY NAME]'),
                  Text('[ORGANISER]'),
                  Text('[LOCATION]'),
                  Text('[ALUMNI] alumni from your school'),
                  Text('Posted [DAYS] days ago'),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ]),
        const SizedBox(height: 12),
        const Divider(),
      ],
    );
  }
}
