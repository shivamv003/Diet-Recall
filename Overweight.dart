import 'home.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

void main() {
  runApp(const ODietPlanApp());
}

class ODietPlanApp extends StatelessWidget {
  const ODietPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet Plan for Overweight',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ODietPlanScreen(),
    );
  }
}

class ODietPlanScreen extends StatelessWidget {
  const ODietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071026),
      appBar: AppBar(
        leading: IconButton(
          color: const Color(0xFFF4F6FB),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            runApp(const MyAppSecond()); // Navigate back to the Home screen
          },
        ),
        title: const Text(
          'Diet Plan for Overweight',
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
        backgroundColor: const Color(0xFF071026),
      ),
      body: const ODietPlanDetails(),
    );
  }
}

class ODietPlanDetails extends StatelessWidget {
  const ODietPlanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 5,
        radius: const Radius.circular(10),
        trackVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Diet Plan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 16),
              dietPlanItem('Breakfast', 'Smoothie with spinach, kale, and berries', '250 kcal', 'Vitamins: A, C, K'),
              dietPlanItem('Mid-Morning Snack', 'Apple slices with almond butter', '150 kcal', 'Vitamins: E, B2, B6'),
              dietPlanItem('Lunch', 'Grilled chicken salad with mixed greens', '400 kcal', 'Vitamins: B3, B6, C, K'),
              dietPlanItem('Afternoon Snack', 'Carrot sticks with hummus', '100 kcal', 'Vitamins: A, E, K'),
              dietPlanItem('Evening Snack', 'Handful of mixed nuts', '200 kcal', 'Vitamins: E, B6'),
              dietPlanItem('Dinner', 'Baked salmon with steamed broccoli', '450 kcal', 'Vitamins: D, B12, K'),
            ],
          ),
        ),
      ),
    );
  }

  Widget dietPlanItem(String meal, String description, String calories, String vitamins) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            meal,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8, width: 400),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            calories,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            vitamins,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
