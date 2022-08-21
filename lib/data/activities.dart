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
      date: '22/08/22',
      longDescription:
          'How can you bring your resume to the top of the pile?  \n\nHow can you present yourself to prospective employers using the language they already speak inside their organization? This course will give you answers to those questions.  \n\nYou will learn how to convert a boring resume into a dynamic asset statement that conveys your talents in the language that an employer understands.',
      address: '747 Eureka St, Ballarat East VIC 3350'),
  Activity(
      name: 'Gain accredited work experience',
      description:
          'Learn industry-hosted work experience from a Learn Local trainer!',
      imgUrl: 'https://i.imgur.com/ZLhQmOQ.jpeg',
      tags: ['Gain real industry experience today'],
      organisor: 'Elizabeth Brown Planned Activity Group',
      latLng: const LatLng(-37.558221751132585, 143.89011997267053),
      date: '23/08/22',
      longDescription:
          'There is a huge gap between industry and education. To bring that gap closer College students consider gaining valuable work experience in the industry. \n\nThe benefits of working for students are numerous, one of the great benefits is that it allow students to acquire skills that they may not learn in a regular classroom.',
      address: '232 Victoria St, Ballarat East VIC 3350'),
  Activity(
      name: 'Online design workshop',
      description:
          'Learn about human-centred design from our experienced practitioners.',
      imgUrl: 'https://i.imgur.com/KWdFoCO.jpeg',
      tags: ['Design your own web-app'],
      organisor: 'Barton Engineering & Construction',
      latLng: const LatLng(-37.55945484263534, 143.90427275526235),
      date: '23/08/22',
      longDescription:
          'In this course, you will design a mobile app for your professional UX portfolio. \n\nYou will start by creating storyboards and getting familiar with the basics of drawing. Then, you will create paper wireframes and digital wireframes using the design tool Figma. You will also create a paper prototype and a digital low-fidelity prototype in Figma.',
      address: '110 Melbourne Rd, Brown Hill VIC 3350'),
  Activity(
      name: 'Make delicious meals and coffee',
      description:
          'Are you worried about taking care for yourself? Come and learn together with us , while also receiving financial support.',
      imgUrl:
          'https://images.unsplash.com/photo-1528712306091-ed0763094c98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=440&q=80',
      tags: ['Learn life skills!'],
      organisor: 'Hideaway Coffee Bar',
      latLng: const LatLng(-37.55239290877898, 143.90119416609215),
      date: '24/08/22',
      longDescription:
          'In the life skill education, the overall personality of a child is taken into consideration. It gives strength to handle any kind of situation and gives courage to face struggle to achieve any target. \n\nBy adding life skill education in the school curriculum, better results can be achieved.',
      address: '332 Humffray St N, Brown Hill VIC 3350'),
  Activity(
      name: 'Join a tech school!',
      description:
          'Igniting interest and inspiring achievement in STEM. Preparing the students of today for the jobs of tomorrow.',
      imgUrl: 'https://i.imgur.com/HymIQ63.jpeg',
      tags: ['Innovation and tech workshop'],
      organisor: 'Exude I.T.',
      latLng: const LatLng(-37.553391972199336, 143.90447064730648),
      date: '25/08/22',
      longDescription:
          'In App Design and Development for iOS with Swift specialization, you will be developing foundational programming skills to support data manipulation from basic functions. \n\nYou will continue to build your skill set to use and apply core graphics, touch handling and gestures, animations and transitions, alerts and actions as well as advanced algorithms, threading and more.',
      address: '123 Ryan St, Brown Hill VIC 3350'),
];
