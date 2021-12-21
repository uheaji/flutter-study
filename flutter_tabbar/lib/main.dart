import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';
import './animalItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  // 탭 컨트롤러는 애니메이션을 이용하므로 dispose() 함수를 호출해주어야 메모리 누수를 막을 수 있다.
  TabController? controller;
  // List.empty는 처음에는 빈값을 의미, growable은 리스트가 가변적으로 증가 할 수 있다는 것을 의미
  List<Animal> animalList = new List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    // length는 몇개의 탭을 만들지 지정, vsync는 탭이 이동했을 때 호출되는 콜백 함수를 어디서 처리할지 지정합니다.
    controller = TabController(length: 2, vsync: this);
    animalList.add(Animal(animalName: '벌', kind: '곤충', imagePath: 'bee.png'));
    animalList.add(Animal(animalName: '고양이', kind: '포유류', imagePath: 'cat.png'));
    animalList.add(Animal(animalName: '젖소', kind: '포유류', imagePath: 'cow.png'));
    animalList.add(Animal(animalName: '강아지', kind: '포유류', imagePath: 'dog.png'));
    animalList.add(Animal(animalName: '여우', kind: '포유류', imagePath: 'fox.png'));
    animalList.add(Animal(animalName: '원숭이', kind: '영장류', imagePath: 'monkey.png'));
    animalList.add(Animal(animalName: '돼지', kind: '포유류', imagePath: 'pig.png'));
    animalList.add(Animal(animalName: '늑대', kind: '포유류', imagePath: 'wolf.png'));
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: TabBarView(
        children: [
          FirstApp(list: animalList),
          SecondApp()
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue,),),
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue,),)
        ], controller: controller,
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
