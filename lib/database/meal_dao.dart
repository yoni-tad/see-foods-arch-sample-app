import 'package:drift/drift.dart';
import 'meal_table.dart';
import 'app_database.dart';

part 'meal_dao.g.dart';

@DriftAccessor(tables: [MealTable])
class MealDao extends DatabaseAccessor<AppDatabase> with _$MealDaoMixin {
  MealDao(AppDatabase db) : super(db);
  Future<void> insertMeal(List<MealTableCompanion> meals) async {
    await batch((batch) {
      batch.insertAll(mealTable, meals, mode: InsertMode.insertOrReplace);
    });
  }

  Future<List<MealTableData>> getMeals() {
    return select(mealTable).get();
  }

  Future<void> clearMeals() async {
    await delete(mealTable).go();
  }
}
