import 'package:flutter/material.dart';
import 'package:govhack22/presentation/home_page.dart';

import '../data/data.dart';
import '../data/school_names.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String search = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> schoolWidgets = [];

    for (var e in schoolNames) {
      if (e.toLowerCase().contains(search)) {
        schoolWidgets.add(SchoolTiles(schoolName: e));
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 96, 24, 16),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'I go to...',
                  style: TextStyle(
                      color: Style.color4,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  style: const TextStyle(fontSize: 24, color: Style.color4),
                  decoration: const InputDecoration(
                    fillColor: Colors.blue,
                    hintText: "What school?",
                    hintStyle: TextStyle(fontSize: 24),
                    border: InputBorder.none,
                  ),
                  onChanged: (e) {
                    setState(() {
                      search = e;
                    });
                  },
                ),
                Expanded(
                  child: ListView(
                    children: schoolWidgets,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Style.color4)),
                onPressed: () => navigateToMaps(context),
                child: const Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SchoolTiles extends StatelessWidget {
  final String schoolName;
  const SchoolTiles({Key? key, required this.schoolName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToMaps(context),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(height: 4),
          Text(
            schoolName,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 4)
        ],
      ),
    );
  }
}

navigateToMaps(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}
