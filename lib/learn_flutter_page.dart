import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false, // return to previous page button
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(5.0),
            color: Colors.grey.shade900,
            height: 40,
            width: double.infinity,
            //transform: Matrix4.rotationZ(0.1),
            child: const Center(
              child: Text(
                "Albert Einstein",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Elevated button was clicked");
            },
            child: const Text("Elevated button"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("Outlined button was clicked");
            },
            child: const Text("Outlined button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("Text button was clicked");
            },
            child: const Text("Text button"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department_rounded,
                color: Colors.deepOrange,
              ),
              Text("Row widget"),
              Icon(
                Icons.house_rounded,
                color: Colors.indigo,
              ),
              Text("Spaced evenly"),
              Icon(
                Icons.alarm_on_rounded,
                color: Colors.green,
              ),
            ],
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint("The row was clicked");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add_ic_call_rounded,
                  color: Colors.blueGrey,
                ),
                Text(" Row widget "),
                Icon(Icons.face_rounded, color: Colors.brown),
                Text(" Spaced in center "),
                Icon(
                  Icons.gamepad_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
