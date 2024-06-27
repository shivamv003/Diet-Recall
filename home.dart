
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';
import 'underweight.dart';
import 'Normaldiet.dart';
import 'Obesity.dart';
import 'Overweight.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyAppSecond());
}

class MyAppSecond extends StatelessWidget {

  const MyAppSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet Recall App',
      theme: ThemeData(
        // primarySwatch: Colors.red,
        scaffoldBackgroundColor:const Color(0xFF071026),
      ),
      home: const DietRecallHomePage(),
    );
  }
}

class DietRecallHomePage extends StatefulWidget {
  const DietRecallHomePage({super.key});

  @override
  _DietRecallHomePageState createState() => _DietRecallHomePageState();
}
class _DietRecallHomePageState extends State<DietRecallHomePage> {

  // final user=FirebaseAuth.instance.signOut();

  signOut()async{
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor:  const Color(0xFF071026),
        title: const Text('Diet Recall',
          style: TextStyle(color:Color(0xFFF4F6FB)),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Diet Recall!',
              style: TextStyle(fontSize: 24.0,color:Color(0xFFF4F6FB)),
            ),
            const SizedBox(height: 20.0),



            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),

              ),
              onPressed: () {
                runApp((const BMIscreen()));
              },
              child: const Text('Calculate BMI index',
                style: TextStyle(color:Color(0xFF071026)),),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),

              onPressed: () {

                // Navigate to food logging screen
              },
              child: const Text('Log Food',
                style: TextStyle(color:Color(0xFF071026)),
              ),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {

                runApp(const DietPlanApp());
              },
              child: const Text('Under Weight Diet',
                style: TextStyle(color:Color(0xFF071026)),),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),

                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                runApp(const NDietPlanApp());
                // Navigate to water intake tracking screen
              },
              child: const Text('Normal Weight Diet',
                style: TextStyle(color:Color(0xFF071026)),),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // Navigate to meal tracking screen
                runApp(const DietPlanApp_O());
              },
              child: const Text('Obesity Diet',
                style: TextStyle(color:Color(0xFF071026)),),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // Navigate to data visu
                runApp(const ODietPlanApp());
              },
              child: const Text('Over Weight diet',
                style: TextStyle(color:Color(0xFF071026)),),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFFF4F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  // Small border radius
                ),
                // foregroundColor: Colors.,
                // backgroundColor: Colors.grey,
                fixedSize:const Size(290,40),
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // runApp(ReminderApp());
                // Navigate to reminders and notifications screen
              },
              child: const Text('Set Reminders',
                style: TextStyle(color:Color(0xFF071026)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (()=>signOut()),
        child: const Icon(Icons.login_rounded),
      ),
    );
  }
}
