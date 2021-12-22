import 'package:flutter/material.dart';
import 'people.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationApp(),
    );
  }
}

class AnimationApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimationApp();
}

class _AnimationApp extends State<AnimationApp> {
  List<People> peoples = new List.empty(growable: true);
  int current = 0;

  void initState() {
    peoples.add(People('필', 180, 92));
    peoples.add(People('헤일리', 162, 55));
    peoples.add(People('미첼', 177, 75));
    peoples.add(People('루크', 130, 40));
    peoples.add(People('캠', 194, 140));
    peoples.add(People('릴리', 100, 80));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
           children: [
             SizedBox(
               child: Row(
                  children: [
                  SizedBox(width: 100, child: Text('이름: ${peoples[current].name}')),
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceIn,
                    color: Colors.amber,
                    child: Text(
                      '키 ${peoples[current].height}',
                      textAlign: TextAlign.center,
                    ),
                    width: 50,
                    height: peoples[current].height,
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInCubic,
                    color: Colors.blue,
                    child: Text(
                      '몸무게 ${peoples[current].weight}',
                      textAlign: TextAlign.center,
                    ),
                    width: 50,
                    height: peoples[current].weight,
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    color: Colors.pinkAccent,
                    child: Text(
                      'bmi ${peoples[current].bmi.toString().substring(0,2)}',
                      textAlign: TextAlign.center,
                    ),
                    width: 50,
                    height: peoples[current].bmi,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
               ),
               height: 200,
             ),
             ElevatedButton(
               onPressed: () {
                setState(() {
                  if(current < peoples.length -1) {
                    current++;
                  }
                });  
               },
               child: Text('다음'),
             ),
              ElevatedButton(
               onPressed: () {
                setState(() {
                  if(current > 0) {
                    current--;
                  }
                });  
               },
               child: Text('이전'),
             ),
           ],
          )
        ),
      
      ),
    );
  }
}