import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/theme/theme_data.dart';
import 'package:meals/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      routes: {
        AppRoutes.HOME: (context) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(),
      },
    );
  }
}
