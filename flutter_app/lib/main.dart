import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() { 
  // main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); // 비동기로 실행됨(이벤트 루프에 등록된다.)
}

class FirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back), 
          title: Text("Credit Card"), 
          centerTitle: true,
          actions: [
            Row(
              children: [
                Icon(AntDesign.shoppingcart),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        body: Text("hello"),
        ),
      ),
    );
  }
}