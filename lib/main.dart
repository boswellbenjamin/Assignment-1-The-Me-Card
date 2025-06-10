import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Me Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Personal Card',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'Benjamin Boswell',
                style: GoogleFonts.justAnotherHand(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 129, 198, 255),
                ),

                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),

                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.email, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          'E-mail: bb222ny@student.lnu.se',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.local_phone, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          'Phone: +46 76 343 59 60',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
