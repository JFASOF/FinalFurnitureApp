import 'package:final_furniture_app/features/furniture/controllers/furnitureDirect.dart';
import 'package:final_furniture_app/features/furniture/pages/allFurniture.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FurnitureHome());
  }
}
