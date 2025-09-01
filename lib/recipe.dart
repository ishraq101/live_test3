class Recipe {
  final String title;
  final String description;
  final List<String> ingredients;
  final String icon;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.icon,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'] ?? 'Untitled Recipe',
      description: json['description'] ?? 'No description available',
      ingredients: List<String>.from(json['ingredients'] ?? []),
      icon: json['icon'] ?? '🍳',
    );
  }
}