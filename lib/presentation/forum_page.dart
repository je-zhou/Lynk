import 'package:flutter/material.dart';
import 'package:govhack22/data/data.dart';
import 'package:govhack22/data/forum.dart';

class ForumPage extends StatelessWidget {
  final Forum forum;
  const ForumPage({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 64, 24, 100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: Text(
                          forum.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Style.color4,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Flexible(
                    child: ListView(
                        padding: EdgeInsets.zero,
                        children: forumReplies
                            .map((e) => Column(
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(e.message),
                                    const SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          e.author,
                                          style: TextStyle(
                                              color: Style.color4
                                                  .withOpacity(0.5)),
                                        ),
                                        Text(
                                          '${e.time} - ${e.date}',
                                          style: TextStyle(
                                              color: Style.color4
                                                  .withOpacity(0.5)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const Divider()
                                  ],
                                ))
                            .toList()),
                  )
                ]),
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
                          backgroundColor:
                              MaterialStateProperty.all(Style.color2),
                        ),
                        onPressed: () {},
                        child: const Text('Send')),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
