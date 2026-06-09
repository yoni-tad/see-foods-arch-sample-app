import 'package:flutter/material.dart';
import 'package:food_arch/models/meal.dart';
import 'package:food_arch/repositories/meal_repository.dart';

class MealProvider extends ChangeNotifier {
  final MealRepository _mealRepository;

  MealProvider({required MealRepository mealRepository})
    : _mealRepository = mealRepository;

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
      _meal = await _mealRepository.getMeal();
    } catch (error) {
      _error = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
