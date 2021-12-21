import 'package:flutter/material.dart';
import '../animalItem.dart';


class SecondApp extends StatefulWidget {
  @override
  // _SecondApp을 반환하는 createState() 함수를 호출
  State<StatefulWidget> createState() => _SecondApp();
  List<Animal>? list;
  SecondApp({Key? key, @required this.list}) : super(key: key);
}


class _SecondApp extends State<SecondApp>{

  final nameController = TextEditingController();
  int? _radioValue = 0;
  bool? flyExist = false;
  String? _imagePath;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                maxLines: 1,
              ),
              Row(
                children: [
                  Radio(value: 0, groupValue: _radioValue, onChanged: _radioChange),
                  Text('양서류'),
                  Radio(value: 1, groupValue: _radioValue, onChanged: _radioChange),
                  Text('파충류'),
                  Radio(value: 2, groupValue: _radioValue, onChanged: _radioChange),
                  Text('포유류'),
                ],
              ),
              Row(
                children: [
                  Text('날 수 있나요?'),
                  Checkbox(value: flyExist, onChanged: (bool? check) {
                    setState(() {
                      flyExist = check;
                    });
                  },)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Image.asset('cow.png', width: 80,),
                    onTap: () {
                      _imagePath = 'cow.png';
                    },
                  ),
                  GestureDetector(
                    child: Image.asset('pig.png', width: 80,),
                    onTap: () {
                      _imagePath = 'pig.png';
                    },
                  ),
                   GestureDetector(
                    child: Image.asset('bee.png', width: 80,),
                    onTap: () {
                      _imagePath = 'bee.png';
                    },
                  ),
                   GestureDetector(
                    child: Image.asset('cat.png', width: 80,),
                    onTap: () {
                      _imagePath = 'cat.png';
                    },
                  ),
                   GestureDetector(
                    child: Image.asset('dog.png', width: 80,),
                    onTap: () {
                      _imagePath = 'dog.png';
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    var animal = Animal(
                      animalName: nameController.value.text, 
                      kind: getKind(_radioValue), 
                      imagePath: _imagePath,
                      flyExist: flyExist);
                    
                    AlertDialog dialog = AlertDialog(
                      title: Text('동물 추가하기'),
                      content: Text(
                        '이 동물은 ${animal.animalName}입니다.'
                        '또 동물의 종류는 ${animal.kind}입니다. \n이 동물을 추가하시겠습니까?',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            widget.list?.add(animal);
                            Navigator.of(context).pop();
                          },
                          child: Text('예'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('아니요'),
                        )
                      ],
                    );
                    showDialog(context: context, builder: (BuildContext context) => dialog);
                  }, 
                  child: Text('동물 추가하기')),
              )
            ],
          )
        ),
       
      ),
    );
  }
   _radioChange(int? value) {
      setState(() {
        _radioValue = value;
      });
  }

  getKind(int? radioValue) {
    switch (radioValue) {
      case 0:
        return "양서류";
      case 1:
        return "파충류";
      case 2:
        return "포유류";
    }
  }
}