import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'wrapper2.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  signup()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text,
        password: password.text);
    Get.offAll(const Wrapper());
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("sign up",
          style: TextStyle(color: Color(0xFFF4F6FB)),
        ),
        backgroundColor: const Color(0xFF071026),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(hintText: 'Enter email'),
            ),
            TextField(
              controller: password,
              decoration:const InputDecoration(hintText: 'Enter password'),
            ),
        ElevatedButton(onPressed: (()=> signup()), child: const Text("Sign up"))
          ],
        ),
      ),

    );

  }
}
