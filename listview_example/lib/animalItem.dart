// ch05-2-1 동물 소개 페이지 만들기

import 'package:flutter/material.dart';

class Animal {
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  Animal(
    {required this.animalName,
    required this.kind,
    required this.imagePath,
    this.flyExist});
}
