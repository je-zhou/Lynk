import 'package:flutter/material.dart';
import 'package:govhack22/data/jobs.dart';

import '../data/data.dart';

class JobPage extends StatelessWidget {
  const JobPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<OpportunityTile> forYou = opsRecToYou
        .map(
          (e) => OpportunityTile(opportunity: e),
        )
        .toList();
    List<OpportunityTile> fromInstructors = opsRecByInstructors
        .map(
          (e) => OpportunityTile(opportunity: e),
        )
        .toList();

    List<OpportunityTile> more = moreNearYou
        .map(
          (e) => OpportunityTile(opportunity: e),
        )
        .toList();

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
                  Column(children: forYou),
                  const SizedBox(height: 16),
                  const Text(
                    'Recommended by your instructors',
                    style: TextStyle(
                        color: Style.color4, fontWeight: FontWeight.bold),
                  ),
                  Column(children: fromInstructors),
                  const SizedBox(height: 16),
                  const Text(
                    'More near you',
                    style: TextStyle(
                        color: Style.color4, fontWeight: FontWeight.bold),
                  ),
                  Column(children: more),
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
  final Opportunity opportunity;
  const OpportunityTile({Key? key, required this.opportunity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth - 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      opportunity.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, color: Style.color4),
                    ),
                    Text(opportunity.organiser),
                    const SizedBox(height: 8),
                    Text(
                      opportunity.location,
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                        '${opportunity.previousAlumni} alumni from your school'),
                    const SizedBox(height: 8),
                    Text(
                      'Posted ${opportunity.days} days ago',
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: NetworkImage(opportunity.companyImgUrl),
                  ),
                ),
              ),
            ]),
        const SizedBox(height: 12),
        const Divider(),
      ],
    );
  }
}
