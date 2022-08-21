import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:govhack22/data/forum.dart';
import 'package:govhack22/presentation/forum_page.dart';
import 'package:govhack22/presentation/mentor_chat.dart';

import '../data/data.dart';
import '../data/mentor.dart';

class OpportunityPage extends StatelessWidget {
  const OpportunityPage({Key? key}) : super(key: key);

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
              const SizedBox(height: 32),
              const Text(
                'Mentors',
                style: TextStyle(fontSize: 14, color: Style.color3),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 120,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        mentors.map((e) => MentorTiles(mentor: e)).toList()),
              ),
              const SizedBox(height: 24),
              const Text(
                'Spaces',
                style: TextStyle(fontSize: 14, color: Style.color3),
              ),
              const SizedBox(height: 16),
              Flexible(
                  child: ListView(
                      padding: EdgeInsets.zero,
                      children:
                          forumData.map((e) => ForumTiles(forum: e)).toList()))
            ]),
      ),
    );
  }
}

class MentorTiles extends StatelessWidget {
  final Mentor mentor;
  const MentorTiles({Key? key, required this.mentor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToMentorChat(context, mentor),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(mentor.imgUrl),
                    ),
                  )),
              Text(mentor.name),
            ],
          ),
          if (mentor.unopennedReplies > 0)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 4, 4, 0),
              alignment: Alignment.center,
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Style.color4,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                mentor.unopennedReplies.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
        ],
      ),
    );
  }
}

class ForumTiles extends StatelessWidget {
  final Forum forum;
  const ForumTiles({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToForum(context, forum),
      child: Container(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                const SizedBox(height: 8),
                Text(
                  forum.title,
                  style: const TextStyle(
                      color: Style.color4,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '${forum.replies} replies - Last message ${forum.minSinceLastReply} mins ago',
                      style: const TextStyle(color: Style.color2, fontSize: 14),
                    ),
                    const SizedBox(width: 4),
                    forum.pinned
                        ? const Icon(
                            FontAwesomeIcons.mapPin,
                            color: Colors.red,
                            size: 16,
                          )
                        : const SizedBox()
                  ],
                ),
                const SizedBox(height: 8),
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
        ),
      ),
    );
  }
}

navigateToMentorChat(context, Mentor mentor) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MentorChat(mentor: mentor)),
  );
}

navigateToForum(context, Forum forum) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ForumPage(forum: forum)),
  );
}
