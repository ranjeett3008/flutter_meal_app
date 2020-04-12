import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  final String categoryTitle;
  final String categoryId;

  CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:Center(
      child: Text(
        'The Recipie for the category!'
        ),
      )
    ); 
  }
}