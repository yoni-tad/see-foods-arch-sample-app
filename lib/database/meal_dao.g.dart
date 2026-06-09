// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_dao.dart';

// ignore_for_file: type=lint
mixin _$MealDaoMixin on DatabaseAccessor<AppDatabase> {
  $MealTableTable get mealTable => attachedDatabase.mealTable;
  MealDaoManager get managers => MealDaoManager(this);
}

class MealDaoManager {
  final _$MealDaoMixin _db;
  MealDaoManager(this._db);
  $$MealTableTableTableManager get mealTable =>
      $$MealTableTableTableManager(_db.attachedDatabase, _db.mealTable);
}
