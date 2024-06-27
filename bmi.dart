import 'home.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

void main() {
  runApp(const BMIscreen());
}

class BMIscreen extends StatelessWidget {
  const BMIscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF071026),
        primarySwatch: Colors.blue,
      ),
      home: const BMICalculator(),
    );
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  String _result = '';

  void _calculateBMI() {
    if (_formKey.currentState?.validate() ?? false) {
      final double weight = double.parse(_weightController.text);
      final double height = double.parse(_heightController.text) /
          100; // Convert height to meters

      final double bmi = weight / (height * height);

      String bmiCategory;
      if (bmi < 18.5) {
        bmiCategory = 'Underweight';
        // const SizedBox(height: 20);;
      } else if (bmi >= 18.5 && bmi < 24.9) {
        bmiCategory = 'Normal weight';
      } else if (bmi >= 25 && bmi < 29.9) {
        bmiCategory = 'Overweight';
      } else {
        bmiCategory = 'Obesity';
      }

      setState(() {
        _result = 'Your BMI is ${bmi.toStringAsFixed(1)}'
            '\nCategory: $bmiCategory';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: const Color(0xFFF4F6FB),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            runApp(const MyAppSecond()); // Navigate back to the Home screen
          },
        ),
        backgroundColor: const Color(0xFF071026),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 30),
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight (kg)',
                  labelStyle: TextStyle(
                    color: Color(0xFFF4F6FB),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF4F6FB), // Border color
                      width: 3.0, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF4F6FB), // Border color when focused
                      width: 3.0, // Border width when focused
                    ),
                  ),
                ),
                style: const TextStyle(color: Color(0xFFF4F6FB)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Height (cm)',
                  labelStyle: TextStyle(
                    color: Color(0xFFF4F6FB),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF4F6FB), // Border color
                      width: 3.0, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF4F6FB), // Border color when focused
                      width: 3.0, // Border width when focused
                    ),
                  ),
                ),
                style: const TextStyle(color: Color(0xFFF4F6FB)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _calculateBMI,
                child: const Text('Calculate BMI'),
              ),
              const SizedBox(height: 36),
              Text(
                _result,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFFF4F6FB),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
