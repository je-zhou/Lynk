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
            SingleChildScrollView(
              child: Column(
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
                            const Icon(FontAwesomeIcons.calendar, size: 32),
                            const SizedBox(width: 16),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(activity.date),
                                const Text('7:00 pm'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
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
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Style.color4,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),

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
                        //TODO:: Change to long desciption
                        Text(activity.description),
                        const SizedBox(height: 48),
                        const Text('Address'),
                        const SizedBox(height: 16),
                        MapWidget(coords: activity.latLng)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Style.color4),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Attend',
                        style: TextStyle(fontSize: 24),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
