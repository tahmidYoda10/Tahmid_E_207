import 'package:tahmid_207_login/welcome.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  await Supabase.initialize(
    url: "https://wckvisjhkhvmwgpfodrk.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indja3Zpc2poa2h2bXdncGZvZHJrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzczMDIzODAsImV4cCI6MjA5Mjg3ODM4MH0.v4cC0b92ZlVx2VE8cfLEF1xU46kzJhwglgTXlZcS4WY",
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome());
  }
}
