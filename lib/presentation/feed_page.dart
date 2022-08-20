import 'package:flutter/material.dart';

import '../data/data.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 96, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's on near you",
            style: TextStyle(fontSize: 24, color: Style.color4),
          ),
          const SizedBox(height: 16),
          Expanded(
              child: ListView(
            children: [
              activityCard(
                  Activity(
                      name: 'Resume 101',
                      description: 'Learn how to write resumes!!!',
                      imgUrl:
                          'https://s3.resume.io/cdn-cgi/image/width=380,dpr=2,format=auto/uploads/local_template_image/image/3367/persistent-resource/toronto-resume-templates.jpg'),
                  screenWidth - 48),
              activityCard(
                  Activity(
                      name: 'Gain accredited work experience',
                      description:
                          'Learn industry-hosted work experience from a Learn Local trainer!',
                      imgUrl: 'https://i.imgur.com/ZLhQmOQ.jpeg'),
                  screenWidth - 48),
              activityCard(
                  Activity(
                    name: 'Online design workshop',
                    description:
                        'Learn about human-centred design from our experienced practitioners.',
                    imgUrl: 'https://i.imgur.com/KWdFoCO.jpeg',
                  ),
                  screenWidth - 48),
              activityCard(
                Activity(
                  name: 'Become a teacher!',
                  description:
                      'Are you an educator ready to take the next step in your career? There is a new way to upskill and become a qualified early childhood teacher sooner, while also receiving financial support.',
                  imgUrl: 'https://i.imgur.com/t4kMsn8.jpeg',
                ),
                screenWidth - 48,
              ),
              activityCard(
                  Activity(
                    name: 'Join a tech school!',
                    description:
                        'Igniting interest and inspiring achievement in STEM. Preparing the students of today for the jobs of tomorrow.',
                    imgUrl: 'https://i.imgur.com/HymIQ63.jpeg',
                  ),
                  screenWidth - 48),
            ],
          )),
        ],
      ),
    );
  }
}

Widget activityCard(Activity activity, double maxWidth) {
  return Card(
    child: Container(
      padding: const EdgeInsets.all(16),
      height: 280,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 4),
        Text(
          activity.name,
          style: const TextStyle(
              color: Style.color4, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Expanded(
            child: Image(
          width: maxWidth,
          image: NetworkImage(activity.imgUrl),
          fit: BoxFit.cover,
        )),
        const SizedBox(height: 8),
        Text(activity.description),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              'Find out more',
              style:
                  TextStyle(color: Style.color4, fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    ),
  );
}
