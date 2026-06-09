import 'package:food_arch/models/meal.dart';
import 'package:food_arch/repositories/meal_repository.dart';
import 'package:food_arch/services/meal_service.dart';

class MealRepositoryImpl extends MealRepository {
  final MealService _mealService = MealService();

  @override
  Future<List<Meal>> getMeal() async {
    return await _mealService.fetchMeals();
  }
}
