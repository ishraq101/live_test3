import 'dart:convert';
import 'package:live_test/recipe.dart';


class RecipeService {
  static List<Recipe> loadRecipes() {
    const String jsonData = '''
    {
      "recipes": [
        {
          "title": "Pasta Carbonara",
          "description": "Creamy pasta dish with bacon and cheese.",
          "ingredients": ["spaghetti", "bacon", "egg", "cheese"],
          "icon": "🍝"
        },
        {
          "title": "Caprese Salad",
          "description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.",
          "ingredients": ["tomatoes", "mozzarella", "basil"],
          "icon": "🥗"
        },
        {
          "title": "Banana Smoothie",
          "description": "Healthy and creamy smoothie with bananas and milk.",
          "ingredients": ["bananas", "milk"],
          "icon": "🥤"
        },
        {
          "title": "Chicken Stir-Fry",
          "description": "Quick and flavorful stir-fried chicken with vegetables.",
          "ingredients": ["chicken breast", "broccoli", "carrot", "soy sauce"],
          "icon": "🍗"
        },
        {
          "title": "Grilled Salmon",
          "description": "Delicious grilled salmon with lemon and herbs.",
          "ingredients": ["salmon fillet", "lemon", "olive oil", "dill"],
          "icon": "🐟"
        },
        {
          "title": "Vegetable Curry",
          "description": "Spicy and aromatic vegetable curry.",
          "ingredients": ["mixed vegetables", "coconut milk", "curry powder"],
          "icon": "🍛"
        },
        {
          "title": "Berry Parfait",
          "description": "Layered dessert with fresh berries and yogurt.",
          "ingredients": ["berries", "yogurt", "granola"],
          "icon": "🍓"
        }
      ]
    }
    ''';

    final Map<String, dynamic> parsedJson = json.decode(jsonData);
    final List<dynamic> recipeList = parsedJson['recipes'];

    return recipeList.map((json) => Recipe.fromJson(json)).toList();
  }
}