import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/user_provider.dart';
import 'package:untitled1/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random User',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => UserProvider(),
        child: const HomePage(),
      ),
    );
  }
}
