import 'home.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

void main() {
  runApp(const DietPlanApp_O());
}

class DietPlanApp_O extends StatelessWidget {
  const DietPlanApp_O({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet Plan for Obesity',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DietPlanForObesityScreen(),
    );
  }
}

class DietPlanForObesityScreen extends StatelessWidget {
  const DietPlanForObesityScreen({super.key});

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
          'Diet Plan for Obesity',
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
        backgroundColor: const Color(0xFF071026),
      ),
      body: const DietPlanDetailsForObesity(),
    );
  }
}

class DietPlanDetailsForObesity extends StatelessWidget {
  const DietPlanDetailsForObesity({super.key});

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
              dietPlanItem('Breakfast', 'Egg white omelette with vegetables', '250 kcal', 'Vitamins: A, B, C'),
              dietPlanItem('Mid-Morning Snack', 'Apple slices with almond butter', '180 kcal', 'Vitamins: B6, C, E'),
              dietPlanItem('Lunch', 'Grilled salmon salad with mixed greens', '350 kcal', 'Vitamins: D, B12, K'),
              dietPlanItem('Afternoon Snack', 'Carrot sticks with hummus', '150 kcal', 'Vitamins: A, K'),
              dietPlanItem('Evening Snack', 'Low-fat yogurt with berries', '200 kcal', 'Vitamins: B2, C'),
              dietPlanItem('Dinner', 'Grilled chicken breast with steamed broccoli and quinoa', '400 kcal', 'Vitamins: B6, C, K'),
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
