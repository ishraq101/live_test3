import 'package:flutter/material.dart';
import 'package:live_test/recipe_list.dart';

void main() {
  runApp( RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluid Recipes',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home:  RecipeListScreen(),
    );
  }
}