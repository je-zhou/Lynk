import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:govhack22/data/data.dart';
import 'package:govhack22/presentation/map_page.dart';

class EventPage extends StatelessWidget {
  final Activity activity;
  const EventPage({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 64, 0, 16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Colors.transparent,
                              child: const Icon(
                                Icons.chevron_left,
                                size: 32,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.calendar,
                            size: 32,
                            color: Style.color4,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '7:00pm on ${activity.date}',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Style.color4,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Flexible(
                  child: ListView(
                    children: [
                      Container(
                        height: 300,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Image.network(
                          activity.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activity.name,
                              style: const TextStyle(
                                  color: Style.color4,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            SizedBox(height: 4),
                            Text('Organised by ${activity.organisor}'),
                            const SizedBox(height: 8),
                            if (activity.tags.isNotEmpty)
                              SizedBox(
                                  height: 32,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: activity.tags
                                        .map((e) => Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Style.color1,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                e,
                                              ),
                                            ))
                                        .toList(),
                                  )),
                            const SizedBox(height: 16),
                            const SizedBox(height: 16),
                            Text(activity.longDescription),
                            const SizedBox(height: 48),
                            Text(activity.address),
                            const SizedBox(height: 16),
                            MapWidget(coords: activity.latLng),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 24, 12),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  color: Style.color4,
                  child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: const Text(
                          'Attend',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
