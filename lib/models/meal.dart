class Meal {
  final int id;
  final String title;
  final String image;
  final String country;

  Meal({
    required this.id,
    required this.title,
    required this.image,
    required this.country,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: int.parse(json['idMeal']),
      title: json['strMeal'] as String,
      image: json['strMealThumb'] as String,
      country: json['strCountry'] as String,
    );
  }
}
