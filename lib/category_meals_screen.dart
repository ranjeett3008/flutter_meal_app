import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipie'),
      ),
      body:Center(
      child: Text(
        'The Recipie for the category!'
        ),
      )
    ); 
  }
}