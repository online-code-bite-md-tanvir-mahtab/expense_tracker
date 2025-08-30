import 'package:expansetracker/data/models/expense.dart';
import 'package:expansetracker/presentation/screens/add_expense_page.dart';
import 'package:expansetracker/presentation/screens/dashboard_page.dart';
import 'package:expansetracker/presentation/screens/expense_details_screen.dart';
import 'package:expansetracker/presentation/screens/expense_summary_screen.dart';
import 'package:expansetracker/presentation/screens/main_screen.dart';
import 'package:expansetracker/presentation/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ExpenseAdapter());
  await Hive.openBox<Expense>('expenses');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/dashboard': (context) => const DashboardPage(),
        '/addTransaction': (context) => const AddExpensePage(),
        '/summary': (context) => ExpenseSummaryScreen(),
        '/setting': (context) => SettingsScreen(),
        '/details': (context) => ExpenseDetailsScreen(),
      },
    );
  }
}
