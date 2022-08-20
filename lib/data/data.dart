import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Style {
  static const color1 = Color(0xffCAC9D2);
  static const color2 = Color(0xff4E4E6D);
  static const color3 = Color(0xff332D53);
  static const color4 = Color(0xff130D3B);
}

class User {
  School school;

  User({required this.school});
}

class Forum {
  String title;
  String author;
  int replies;
  int minSinceLastReply;
  bool pinned;

  Forum(
      {required this.title,
      required this.author,
      required this.replies,
      required this.minSinceLastReply,
      required this.pinned});
}

List<Forum> forumData = [
  Forum(title: '', author: '', replies: 1, minSinceLastReply: 1, pinned: false)
];

class Mentor {
  String name;
  String imgUrl;
  int unopennedReplies;

  Mentor(
      {required this.name,
      required this.imgUrl,
      required this.unopennedReplies});
}

List<Mentor> mentors = [Mentor(name: '', imgUrl: '', unopennedReplies: 4)];

class Activity {
  String name;
  String description;
  String imgUrl;
  List<String> tags;
  String organisor;
  LatLng latLng;
  String date;

  Activity(
      {required this.name,
      required this.description,
      required this.imgUrl,
      required this.tags,
      required this.latLng,
      required this.organisor,
      required this.date});
}

class School {
  String name;
  String sector;
  String suburb;
  int totalCompletedY12;
  int onTrackConsenters;
  int onTrackRespondents;
  double inEduBachelor; // 40 in excel = 0.4 (40%)
  double inEduDeferred;
  double inEduTafe;
  double inEduApprentice;
  double notInEduEmp;
  double notInEduLFW;
  double notInEduOther;
  // TODO:: Add statistics

  School(
      {required this.name,
      required this.sector,
      required this.suburb,
      required this.totalCompletedY12,
      required this.onTrackConsenters,
      required this.onTrackRespondents,
      required this.inEduApprentice,
      required this.inEduBachelor,
      required this.inEduDeferred,
      required this.inEduTafe,
      required this.notInEduEmp,
      required this.notInEduLFW,
      required this.notInEduOther});

  fromFranklin(List data) {
    // Data should look like
    // [
    // name,
    // sector,
    // suburb,
    // totalCompletedY12,
    // onTrackConsenters,
    // onTrackRespondents,
    // inEduApprentice,
    // inEduBachelor,
    // inEduDeferred,
    // inEduTafe,
    // notInEduEmp,
    // notInEduLFW,
    // notInEduOther,
    // ]
    return School(
        name: data[0],
        sector: data[1],
        suburb: data[2],
        totalCompletedY12: data[3],
        onTrackConsenters: data[4],
        onTrackRespondents: data[5],
        inEduApprentice: data[6],
        inEduBachelor: data[7],
        inEduDeferred: data[8],
        inEduTafe: data[9],
        notInEduEmp: data[10],
        notInEduLFW: data[11],
        notInEduOther: data[12]);
  }
}

final userData = User(
  school: School(
      name: 'WOODMANS HILL SECONDARY COLLEGE',
      sector: 'G',
      suburb: 'GLEN WAVERLEY - WEST',
      totalCompletedY12: 100,
      onTrackConsenters: 0,
      onTrackRespondents: 0,
      inEduBachelor: 0,
      inEduApprentice: 0,
      inEduDeferred: 0,
      inEduTafe: 0,
      notInEduEmp: 0,
      notInEduLFW: 0,
      notInEduOther: 0),
);

Map mockAPIData = {
  "results": [
    {
      "address_components": [
        {
          "long_name": "Osullivan Road",
          "short_name": "Osullivan Rd",
          "types": ["route"]
        },
        {
          "long_name": "Glen Waverley",
          "short_name": "Glen Waverley",
          "types": ["locality", "political"]
        },
        {
          "long_name": "City of Monash",
          "short_name": "City of Monash",
          "types": ["administrative_area_level_2", "political"]
        },
        {
          "long_name": "Victoria",
          "short_name": "VIC",
          "types": ["administrative_area_level_1", "political"]
        },
        {
          "long_name": "Australia",
          "short_name": "AU",
          "types": ["country", "political"]
        },
        {
          "long_name": "3150",
          "short_name": "3150",
          "types": ["postal_code"]
        }
      ],
      "formatted_address": "Osullivan Rd, Glen Waverley VIC 3150, Australia",
      "geometry": {
        "location": {"lat": -37.8779381, "lng": 145.1619592},
        "location_type": "GEOMETRIC_CENTER",
        "viewport": {
          "northeast": {"lat": -37.8767041197085, "lng": 145.1632853802915},
          "southwest": {"lat": -37.8794020802915, "lng": 145.1605874197085}
        }
      },
      "partial_match": true,
      "place_id": "ChIJSbj2B78_1moRAbMRjES7Drc",
      "plus_code": {
        "compound_code": "45C6+RQ Glen Waverley VIC, Australia",
        "global_code": "4RJ745C6+RQ"
      },
      "types": [
        "establishment",
        "point_of_interest",
        "school",
        "secondary_school",
        "university"
      ]
    }
  ],
  "status": "OK"
};
