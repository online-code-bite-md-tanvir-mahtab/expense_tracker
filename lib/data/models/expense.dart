import 'package:hive/hive.dart';

part 'expense.g.dart';

@HiveType(typeId: 0)
class Expense extends HiveObject {
  @HiveField(0)
  double amount;

  @HiveField(1)
  String category;

  @HiveField(2)
  String description;

  @HiveField(3)
  DateTime date;

  Expense({
    required this.amount,
    required this.category,
    required this.description,
    required this.date,
  });
}
