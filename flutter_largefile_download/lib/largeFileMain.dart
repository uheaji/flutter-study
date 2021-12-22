import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
// 파일 입출력을 돕는 io패키지
import 'dart:io';

class LargeFileMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LargeFileMain();
}


class _LargeFileMain extends State<LargeFileMain> {
  // 내려받을 이미지 주소
  final imgUrl = 
    'http://images.pexels.com/photos/240040/pexels-photo-240040.jpeg '
    '?auto=compress';
  bool downloading = false; // 지금 내려받는 중인지 확인하는 변수
  var progressString = '';
  String file = '';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Large File example'),
      ),
      body: Center(
        child: downloading
          ? Container(
            height: 120.0,
            width: 200.0,
            child: Card(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Downloading File: $progressString',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
          )
          // FutureBuilder는 아직은 데이터가 없지만 앞으로 데이터를 받아서 처리한 후에 만들겠다는 의미
        : FutureBuilder(
          // snapshot은 Futurebuilder.future에서 받아온 데이터를 저장한 dynamic형태의 변수
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                print('none');
                return Text('데이터 없음');
              case ConnectionState.waiting:
                print('waiting');
                return CircularProgressIndicator();
              case ConnectionState.active:
                print('active');
                return CircularProgressIndicator();
              case ConnectionState.done:
                print('done');
                if(snapshot.hasData) {
                  // snapshot.data는 downloadWidget함수가 반환하는 데이터이다.
                  return snapshot.data as Widget;
                }
            }
            print('end process');
            return Text('데이터 없음');
          },
          future: downloadWidget(file),
        )),
        
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          downloadFile();
        },
        child: Icon(Icons.file_download),
      ),
    );
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();
    try {
      // 플러터앱의 내부 디렉터리를 가져온다
      var dir = await getApplicationDocumentsDirectory();
      // imgUrl을 내부 디렉터리에 내려받는다.
      await dio.download(imgUrl, '${dir.path}/myimage.jpg',
        // 데이터를 내려받을 때 때마다 진행상황을 표시, rec는 지금까지 내려받은 데이터, total은 파일의 전체크기
        onReceiveProgress: (rec, total) {
          print('Rec: $rec, Total: $total');
          file = '${dir.path}/myimage.jpg';
          setState(() {
            downloading = true;
            progressString = ((rec / total) * 100).toStringAsFixed(0) + '%';
          });
        });
    } catch (e) {
      print(e);
    }
    setState(() {
      // 다 내려받으면
      downloading = false;
      progressString = 'Completed';
    });
    print('Download completed');
  }


  Future<Widget> downloadWidget(String filePath) async {
    File file = File(filePath);
    bool exist = await file.exists();
    // 캐시 초기화하기
    new FileImage(file).evict();

    if(exist) {
      return Center(
        child: Column(
          children: [
            Image.file(File(filePath))
          ],
        ),
      );
    } else {
      return Text('No data');
    }
  }

}// _LargeFileMain 클래스를 마치는 괄호