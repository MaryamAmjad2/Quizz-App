import 'package:flutter/material.dart';

import 'QuizBrain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> keeper = [];
  int count = 0;
  QuizBrain brain = QuizBrain();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black45,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 6,
                  child: Center(
                    child: Text(
                      brain.getQuestion(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Expanded(
                  child: TextButton(
                    child: Text('True'),
                    onPressed: () {
                      setState(() {
                        if (brain.getAnswere() == true) {
                          print('Good');
                          keeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        } else {
                          keeper.add(Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ));
                        }
                        brain.getnextQuestion();
                      });
                    },
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: OutlinedButton(
                    child: Text('False'),
                    onPressed: () {
                      setState(() {
                        if (brain.getAnswere() == false) {
                          keeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        } else {
                          keeper.add(Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ));
                        }
                        brain.getnextQuestion();
                      });
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red.shade800),
                  ),
                ),
                //TODO:Making a score keeper
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: keeper,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
