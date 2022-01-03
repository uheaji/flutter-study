import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileApp extends StatefulWidget {
  @override
  _FileAppState createState() => _FileAppState();
}

class _FileAppState extends State<FileApp> {
  int _count = 0;
  List<String> itemList = new List.empty(growable: true);
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    readCountFile();
  }

  // initState()함수에는 async를 사용할 수 없으므로 initData()함수 생성.
  void initData() async {
    var result = await readListFile();
    setState(() {
      itemList.addAll(result);
    });
  }

  Future<List<String>> readListFile() async {
    List<String> itemList = new List.empty(growable: true);
    var key = 'first';
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? firstCheck =
        pref.getBool(key); // firstCheck 변수는 이후에 파일을 처음 열었는지 확인하는 용도로 사용.
    var dir = await getApplicationDocumentsDirectory();
    bool fileExist = await File(dir.path + '/fruit.txt')
        .exists(); // fileExist 변수는 이후에 파일이 있는지를 확인하는 용도로 사용.

    if (firstCheck == null || firstCheck == false || fileExist == false) {
      pref.setBool(key, true);
      var file = await DefaultAssetBundle.of(context).loadString('fruit.txt');
      File(dir.path + '/fruit.txt').writeAsStringSync(file);
      var array = file.split('\n');
      for (var item in array) {
        print(item);
        itemList.add(item);
      }
      return itemList;
    } else {
      var file = await File(dir.path + '/fruit.txt').readAsString();
      var array = file.split('\n');
      for (var item in array) {
        print(item);
        itemList.add(item);
      }
      return itemList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.text,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Center(
                        child: Text(
                          itemList[index],
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    );
                  },
                  itemCount: itemList.length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  // 매개변수로 전달받은 count값을 count.txt라는 이름의 파일로 만들어 문자열 형태로 저장함
  void writeCountFile(int count) async {
    var dir =
        await getApplicationDocumentsDirectory(); // 내부 저장소의 경로를 가져와서 그곳에 파일을 읽거나 쓴다.
    File(dir.path + '/count.txt').writeAsStringSync(count.toString());
  }

  // count.txt파일을 읽어 다시 정수형으로 변환 후 _count변수에 저장함. 그리고 앱이 실행될 때 파일에서 가져온 데이터를 표시하기위해 initState()함수에서 호출한다.
  void readCountFile() async {
    try {
      var dir = await getApplicationDocumentsDirectory();
      var file = await File(dir.path + '/count.txt').readAsString();
      print(file);
      setState(() {
        _count = int.parse(file);
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
