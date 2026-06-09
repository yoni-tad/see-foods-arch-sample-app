import 'package:flutter/material.dart';
import 'package:food_arch/models/meal.dart';
import 'package:food_arch/services/meal_service.dart';

class MealProvider extends ChangeNotifier {
  final MealService _mealService = MealService();

  List<Meal> _meal = [];
  bool _isLoading = false;
  String _error = "";

  List<Meal>? get meal => _meal;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> loadMeal() async {
    _isLoading = true;
    _error = "";
    notifyListeners();

    try {
      _meal = await _mealService.fetchMeals();
    } catch (error) {
      _error = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
