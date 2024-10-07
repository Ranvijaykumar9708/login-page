import 'package:flutter/material.dart';

void main() {
  runApp(const happygo());
}

// ignore: camel_case_types
class happygo extends StatelessWidget {
  const happygo({super.key});

  Null get name => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Center(
            child: Text(
              'Login page', 
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800, shadows: [
      Shadow(
        color: Color.fromARGB(255, 27, 192, 12), 
        offset: Offset(2, 2), 
        blurRadius: 5, 
      ),
    ],),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/image/s.png'),
              ),
              const SizedBox(height: 20), 
              const TextField(
                decoration: InputDecoration( focusColor: Colors.blue,
                  
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(), 
              
                ),
                keyboardType: TextInputType.emailAddress, 
              ),
              const SizedBox(height: 20), 
              const TextField(
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  focusColor: Colors.lightBlue,
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(), 
                ),
                obscureText: true, 
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent, 
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), 
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
