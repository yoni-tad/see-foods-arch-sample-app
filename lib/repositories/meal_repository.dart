// I can provide meals.

import 'package:food_arch/models/meal.dart';

abstract class MealRepository {
  Future<List<Meal>> getMeal();
}
