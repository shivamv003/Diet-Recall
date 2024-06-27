import 'home.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

void main() {
  runApp(const DietPlanApp());
}

class DietPlanApp extends StatelessWidget {
  const DietPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet Plan for Underweight',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DietPlanScreen(),
    );
  }
}

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF071026),
      appBar: AppBar(
        leading: IconButton(
          color: const Color(0xFFF4F6FB),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            runApp(const MyAppSecond()); // Navigate back to the Home screen
          },
        ),
        title: const Text('Diet Plan for Underweight',
          style: TextStyle(color:Color(0xFFF4F6FB)),),
        backgroundColor: const Color(0xFF071026),
      ),
      body: const DietPlanDetails(),
    );
  }
}

class DietPlanDetails extends StatelessWidget {
  const DietPlanDetails({super.key});

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
              dietPlanItem('Breakfast', 'Oatmeal with fruits and nuts', '350 kcal', 'Vitamins: A, B, C, D'),
              dietPlanItem('Mid-Morning Snack', 'Greek yogurt with honey', '150 kcal', 'Vitamins: B2, B12'),
              dietPlanItem('Lunch', 'Grilled chicken with quinoa and vegetables', '500 kcal', 'Vitamins: B6, C, K'),
              dietPlanItem('Afternoon Snack', 'Smoothie with banana, spinach, and almond milk', '200 kcal', 'Vitamins: A, C, E'),
              dietPlanItem('Evening Snack', 'Peanut butter on whole grain toast', '250 kcal', 'Vitamins: E, B3'),
              dietPlanItem('Dinner', 'Salmon with sweet potatoes and broccoli', '600 kcal', 'Vitamins: D, B12, K'),
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
          const SizedBox(height: 8,width:400),
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
