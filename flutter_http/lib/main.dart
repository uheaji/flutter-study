import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpApp(),
    );
  }
}

class HttpApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HttpApp();
}

class _HttpApp extends State<HttpApp> {
  String result = '';
  List? data;
  // 텍스트필드
  TextEditingController? _editingController;
  // 스크롤
  ScrollController? _scrollController;
  int page = 1;


  @override
  void initState() {
    super.initState();
    data = new List.empty(growable: true);
    // TextEditingController를 초기화
    _editingController = new TextEditingController();
    _scrollController = new ScrollController();

    _scrollController!.addListener(() {
      // offset은 목록에서 현재위치를 double형 변수로 나타냄
      if(_scrollController!.offset >= _scrollController!.position.maxScrollExtent && _scrollController!.position.outOfRange) {
          print('bottom');
          page++;
          getJSONData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 검색필드
      appBar: AppBar(
        title: TextField(
          controller: _editingController,
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          // decoration은 텍스트필드 위젯에 보이는 텍스트를 꾸미는 옵션, hintTex는 텍스트필드에 무엇을 입력해야 하는지를 알려주는 역할이다.
          decoration: InputDecoration(hintText: '검색어를 입력하세요.'),
        ),
      ),
      body: Container(
        child: Center(
          child: data!.length == 0
              ? Text(
                  '데이터가 없습니다.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
              )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Row(
                          children: [
                            Image.network(
                              data![index]['thumbnail'],
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width - 150,
                                  child: Text(
                                    data![index]['title'].toString(),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Text('저자 : ${data![index]['authors'].toString()}'),
                                Text('가격 : ${data![index]['sale_price'].toString()}'),
                                Text('판매중 : ${data![index]['status'].toString()}'),
                              ],
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                    );
                  },
                  itemCount: data!.length,
                  controller: _scrollController,
              )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          // 버튼을 누를때마다 기존내용을 지우고 페이지를 1로 초기회힘
          page = 1;
          data!.clear();
          getJSONData();
        },
        child: Icon(Icons.file_download),
      ),
    );
  }

  // 비동기
  Future<String> getJSONData() async {
    var url = 
      'https://dapi.kakao.com/v3/search/book?'
      'target=title&page=$page&query=${_editingController!.value.text}';
    var response = await http.get(Uri.parse(url),
      headers: {"Authorization": "KakaoAK 528fe0b38c60335c74937d9c7b5a25dd"});
    // print(response.body);
    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      List result = dataConvertedToJSON['documents'];
      data!.addAll(result);
    });
    return response.body;
  }
}