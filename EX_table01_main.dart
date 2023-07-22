//table 예제
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'TestMyApp01',
            style: TextStyle(fontSize: 25, color: Colors.black45),
          ),
        ),
        body: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Container(
                  height: 64,
                  color: Colors.green,
                ),
                Container(
                  height: 64,
                  color: Colors.red,
                ),
                Container(
                  height: 64,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  height: 64,
                  color: Colors.purple,
                ),
                Container(
                  height: 64,
                  color: Colors.yellow,
                ),
                Container(
                  height: 64,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
