import 'package:flutter/material.dart';

class Animal {
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  // @required 어노테이션은 함수를 호출할 때 꼭 전달해야 하는 값!
  Animal(
    {required this.animalName,
      required this.kind,
      required this.imagePath,
      this.flyExist
    }
  );
}