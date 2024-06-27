import 'package:diet/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'forgot.dart';


class Login2Page extends StatefulWidget {
  const Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword
      (email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF071026),
      appBar: AppBar(
        title:const Text("Login",
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
        backgroundColor: const Color(0xFF071026),

      ),

      body:Padding(

          padding: const EdgeInsets.all(20.0),
          child:  Column(
            children: [
              const SizedBox(height: 50),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),

                  child: Image.asset(
                    'assets/images/Vertical Lockup on White Background.png', // Make sure you have an image asset at this path
                    width: 120,
                    height: 120,
                  ),
                ),
              ),

              const SizedBox(height: 90),
              TextField(
                controller: email,
                decoration:  const InputDecoration(labelText: "Enter email",
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
              ),

              const SizedBox(height: 40),

              TextField(
                controller: password,
                decoration: const InputDecoration(labelText: "Enter password",
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
                obscureText: true, // This will hide the password
              ),

              const SizedBox(height: 40),
              ElevatedButton(onPressed: (()=>signIn()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF4F6FB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Small border radius
                  ),
                  fixedSize: const Size(250, 40),
                  textStyle: const TextStyle(
                    color: Color(0xFF071026), // Ensure the text color is correct
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("Login", style: TextStyle(color: Color(0xFF071026)),
                ),
              ),
              const SizedBox(height: 40),
              // ElevatedButton(onPressed: (()=>signIn()), child: const Text("Login")),
              ElevatedButton(onPressed: (()=>Get.to(() => const signup())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF4F6FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Small border radius
                    ),
                    fixedSize: const Size(150, 40),
                    textStyle: const TextStyle(
                      color: Color(0xFF071026), // Ensure the text color is correct
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text("New User?"
                      "Register now",style: TextStyle(color: Color(0xFF071026)),
                  ),
              ),
              // const SizedBox(height: 40),

              ElevatedButton(onPressed: (()=>Get.to(() =>const Forgot())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF4F6FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Small border radius
                    ),
                    fixedSize: const Size(150, 40),
                    textStyle: const TextStyle(
                      color: Color(0xFF071026), // Ensure the text color is correct
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child:const Text("Forgot password ?",style: TextStyle(color: Color(0xFF071026)),),
              ),
              // Get.to(() => signup())
              // Get.to(Forgot())
            ],
          )
      ),
    );
  }
}
