import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'data.dart';

List activities = [
  Activity(
      name: 'Resume 101',
      description: 'Learn how to write resumes!!!',
      imgUrl:
          'https://s3.resume.io/cdn-cgi/image/width=380,dpr=2,format=auto/uploads/local_template_image/image/3367/persistent-resource/toronto-resume-templates.jpg',
      tags: ['How to write a good resume'],
      organisor: 'Woodsman Hill Careers',
      latLng: const LatLng(-37.56668938174067, 143.89387145773625),
      date: '22/08/22'),
  Activity(
      name: 'Gain accredited work experience',
      description:
          'Learn industry-hosted work experience from a Learn Local trainer!',
      imgUrl: 'https://i.imgur.com/ZLhQmOQ.jpeg',
      tags: ['Gain real industry experience today'],
      organisor: 'Elizabeth Brown Planned Activity Group',
      latLng: const LatLng(-37.558221751132585, 143.89011997267053),
      date: '23/08/22'),
  Activity(
    name: 'Online design workshop',
    description:
        'Learn about human-centred design from our experienced practitioners.',
    imgUrl: 'https://i.imgur.com/KWdFoCO.jpeg',
    tags: ['Design your own web-app'],
    organisor: 'Barton Engineering & Construction',
    latLng: const LatLng(-37.55945484263534, 143.90427275526235),
    date: '23/08/22',
  ),
  Activity(
      name: 'Make delicious meals and coffee',
      description:
          'Are you worried about taking care for yourself? Come and learn together with us , while also receiving financial support.',
      imgUrl:
          'https://images.unsplash.com/photo-1528712306091-ed0763094c98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=440&q=80',
      tags: ['Learn life skills!'],
      organisor: 'Hideaway Coffee Bar',
      latLng: const LatLng(-37.55239290877898, 143.90119416609215),
      date: '24/08/22'),
  Activity(
      name: 'Join a tech school!',
      description:
          'Igniting interest and inspiring achievement in STEM. Preparing the students of today for the jobs of tomorrow.',
      imgUrl: 'https://i.imgur.com/HymIQ63.jpeg',
      tags: ['Innovation and tech workshop'],
      organisor: 'Exude I.T.',
      latLng: const LatLng(-37.553391972199336, 143.90447064730648),
      date: '25/08/22'),
];
