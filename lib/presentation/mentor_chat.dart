import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/data.dart';

class MentorChat extends StatefulWidget {
  final Mentor mentor;
  const MentorChat({Key? key, required this.mentor}) : super(key: key);

  @override
  State<MentorChat> createState() => _MentorChatState();
}

class _MentorChatState extends State<MentorChat> {
  TextEditingController controller = TextEditingController();

  List<String> newMessages = [];

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const Padding(
        padding: EdgeInsets.only(left: 24, top: 16),
        child: Card(
          color: Style.color3,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Hi Jack, thanks for agreeing to be one of my mentors! I'm not quite sure what I want to do after I graduate. I know you work in real estate and I'd love to get some advice as this is a field I'm quited interested in!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 24, top: 16),
        child: Card(
          color: Style.color1,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
                "Hi Daniel, thanks for reaching out! Happy to be a mentor and pass on some skills and experiences to the next generation. "),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 24, top: 16),
        child: Card(
          color: Style.color3,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Thanks Jack! I was wondering what kind of skills you use on a day to day basis, and which ones, if any, would be applicable for a student like me during a job interview?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 24, top: 16),
        child: Card(
          color: Style.color1,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
                "Great question Daniel! I definitely have improved my verbal communication over the years, as well as my ability to read body language. It's very important to be cohesive and concise with clients. You don't want to bore them but you do want to make sure they are receiving and understanding all the necessary information."),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 24, top: 16),
        child: Card(
          color: Style.color1,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
                "In terms of skills that you can bring forth to a job interview, your spoken language is crucial for sure, but don't downplay the importance of listening to your interviewers and comprehending the question, as it may have multiple layers. I've got your email through the app already, so I'll send some documents about our workshops and you choose a day and time that works for you!  😃"),
          ),
        ),
      ),
    ];

    return Scaffold(
        body: Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 64),
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
                const SizedBox(width: 16),
                Text(
                  widget.mentor.name,
                  style: const TextStyle(fontSize: 24, color: Style.color4),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Flexible(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: children +
                      newMessages
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.only(left: 24, top: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Card(
                                    color: Style.color3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text(
                                        e,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList()),
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: const BoxDecoration(color: Colors.black12),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: "Aa",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Style.color3),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Style.color1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Style.color2),
                    ),
                    onPressed: () {
                      setState(() {
                        newMessages.add(controller.text);
                        controller.clear();
                      });
                    },
                    child: const Text('Send')),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
