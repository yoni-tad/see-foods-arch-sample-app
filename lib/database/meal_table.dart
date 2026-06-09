import 'package:drift/drift.dart';

class MealTable extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get image => text()();
  TextColumn get country => text()();

  @override
  Set<Column> get primaryKey => {id};
}
