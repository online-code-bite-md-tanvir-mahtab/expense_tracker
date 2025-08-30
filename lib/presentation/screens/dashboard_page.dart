import 'package:expansetracker/presentation/widgets/dashboard_card.dart';
import 'package:expansetracker/presentation/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: DashboardCard(title: 'Today', amount: '\$25.00'),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: DashboardCard(title: 'This Week', amount: '\$150.00'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'This Month',
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '\$600.00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Expenses',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Monthly',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ExpenseItem(
              icon: Icons.restaurant,
              title: 'Lunch',
              category: 'Food',
              amount: '-\$12.50',
              date: 'Oct 26',
            ),
            ExpenseItem(
              icon: Icons.directions_bus,
              title: 'Bus Fare',
              category: 'Transportation',
              amount: '-\$2.75',
              date: 'Oct 26',
            ),
            ExpenseItem(
              icon: Icons.movie,
              title: 'Movie Ticket',
              category: 'Entertainment',
              amount: '-\$15.00',
              date: 'Oct 25',
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/details");
              },
              child: ExpenseItem(
                icon: Icons.shopping_cart,
                title: 'Groceries',
                category: 'Shopping',
                amount: '-\$35.00',
                date: 'Oct 24',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}
