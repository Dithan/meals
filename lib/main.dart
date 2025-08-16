import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/models/settings.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/settings_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/theme/theme_data.dart';
import 'package:meals/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _avaliableMeals = dummyMeals;
  Settings settings = Settings();
  List<Meal> _favoriteMeals = [];

  void _filterMeals(Settings settings) {
    setState(() {
      _avaliableMeals = dummyMeals.where(
        (meal) {
          this.settings = settings;
          final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
          final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
          final filterVegan = settings.isVegan && !meal.isVegan;
          final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

          return !filterGluten &&
              !filterLactose &&
              !filterVegan &&
              !filterVegetarian;
        },
      ).toList();
    });
  }

  void _toggleFavorite(Meal meal) {
    setState(() {
      _favoriteMeals.contains(meal)
          ? _favoriteMeals.remove(meal)
          : _favoriteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      routes: {
        AppRoutes.HOME: (context) => TabsScreen(
              favoriteMeals: _favoriteMeals,
            ),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen(
              meals: _avaliableMeals,
            ),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(
              onToggleFavorite: _toggleFavorite,
              isFavorite: _isFavorite,
            ),
        AppRoutes.SETTINGS: (context) => SettingsScreen(
              onSettingsChanged: _filterMeals,
              settings: settings,
            ),
      },
    );
  }
}
