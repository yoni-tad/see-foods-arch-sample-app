import 'package:flutter/material.dart';
import 'package:food_arch/providers/meal_provider.dart';
import 'package:food_arch/repositories/meal_repository_impl.dart';
import 'package:food_arch/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MealProvider(mealRepository: MealRepositoryImpl()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
