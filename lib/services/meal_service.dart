import 'package:food_arch/models/meal.dart';
import 'package:dio/dio.dart';

class MealService {
  static const String API_URL =
      "https://themealdb.com/api/json/v1/1/filter.php?c=Seafood";
  final dio = Dio();

  Future<List<Meal>> fetchMeals() async {
    Response response = await dio.get(API_URL);

    if (response.statusCode == 200) {
      final mealJson = response.data["meals"];

      return mealJson.map<Meal>((json) => Meal.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load meals: ");
    }
  }
}
