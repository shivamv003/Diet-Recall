import 'home.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

void main() {
  runApp(const NDietPlanApp());
}

class NDietPlanApp extends StatelessWidget {
  const NDietPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balanced Diet Plan',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const NDietPlanScreen(),
    );
  }
}

class NDietPlanScreen extends StatelessWidget {
  const NDietPlanScreen({super.key});

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
          'Balanced Diet Plan',
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
        backgroundColor: const Color(0xFF071026),
      ),
      body: const NDietPlanDetails(),
    );
  }
}

class NDietPlanDetails extends StatelessWidget {
  const NDietPlanDetails({super.key});

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
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 16),
              dietPlanItem('Breakfast', 'Whole grain toast with avocado and poached egg', '350 kcal', 'Vitamins: A, B6, C, D'),
              dietPlanItem('Mid-Morning Snack', 'Apple slices with almond butter', '150 kcal', 'Vitamins: A, E, B2'),
              dietPlanItem('Lunch', 'Turkey sandwich with mixed greens and tomato', '450 kcal', 'Vitamins: A, B6, C, K'),
              dietPlanItem('Afternoon Snack', 'Carrot sticks with hummus', '100 kcal', 'Vitamins: A, C, E'),
              dietPlanItem('Evening Snack', 'Mixed nuts', '200 kcal', 'Vitamins: E, B3, B1'),
              dietPlanItem('Dinner', 'Grilled chicken with brown rice and steamed vegetables', '500 kcal', 'Vitamins: B6, C, K'),
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
