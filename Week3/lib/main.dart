import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Pretendard",
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDSC 모바일 스터디"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text("과제",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                child: Column(children: [
                  Text(
                    "오늘의 과제",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Icon(
                    color: Colors.black,
                    Icons.collections_bookmark_outlined,
                    size: 60,
                  )
                ]),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150),
                    backgroundColor: Colors.white,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                width: 40,
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Column(children: [
                  Text(
                    "수행한 과제",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Icon(
                    color: Colors.black,
                    Icons.collections_bookmark,
                    size: 60,
                  )
                ]),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150),
                    backgroundColor: Colors.white,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              )
            ]),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(children: [
              SizedBox(
                width: 20,
                height: 20,
              ),
              Text("나의 수행도",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ]),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
              width: 350,
              height: 350,
              child: TableCalendar(
                firstDay: DateTime.utc(2024, 4, 1),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text(
                  "나의 다짐",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text(
                  "과제를 모두 죽이겠다. 그르르르",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ));
  }
}
