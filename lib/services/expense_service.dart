import 'package:expansetracker/data/models/expense.dart';
import 'package:hive/hive.dart';

class ExpenseService {
  final Box<Expense> _box = Hive.box<Expense>('expenses');

  void addExpense(Expense expense) {
    _box.add(expense);
  }

  List<Expense> getAllExpenses() {
    return _box.values.toList();
  }

  void deleteExpense(int index) {
    _box.deleteAt(index);
  }

  void updateExpense(int index, Expense expense) {
    _box.putAt(index, expense);
  }

  double getTotalExpense() {
    return _box.values.fold(0, (sum, e) => sum + e.amount);
  }
}
