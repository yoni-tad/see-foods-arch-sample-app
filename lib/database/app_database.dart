import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'meal_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [MealTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnetion());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnetion() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();

    final file = File(p.join(dir.path, 'food.db'));

    return NativeDatabase(file);
  });
}
