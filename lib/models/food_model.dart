
class FoodModel {
  final String id;
  final String title;
  final String imageUrl;
  final String description;

  FoodModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['idMeal'],
      title: json['strMeal'],
      imageUrl: json['strMealThumb'],
      description: json['strInstructions'] ?? '',
    );
  }
}
