import 'package:flutter/material.dart';
import 'package:govhack22/presentation/job_page.dart';

import 'package:govhack22/presentation/map_page.dart';

import '../data/data.dart';
import 'community_page.dart';
import 'feed_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Material(
          color: Style.color3,
          child: TabBar(
              indicatorColor: Style.color1,
              overlayColor: MaterialStateProperty.all(Style.color2),
              tabs: const [
                Tab(icon: Icon(Icons.calendar_month), text: 'Events'),
                Tab(icon: Icon(Icons.work), text: 'Opportunities'),
                Tab(icon: Icon(Icons.people), text: 'Community'),
              ]),
        ),
        body: const TabBarView(
          children: [FeedPage(), JobPage(), OpportunityPage()],
        ),
      ),
    );
  }
}
