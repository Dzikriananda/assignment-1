import 'package:assigment_1/src/presentation/modules/first_screen/first_screen.dart';
import 'package:assigment_1/src/presentation/modules/second_screen/second_screen.dart';
import 'package:assigment_1/src/presentation/modules/third_screen/third_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case '/secondScreen':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondScreen(
              name: args,
            ),
          );
        }
        return _errorRoute();
      case '/thirdScreen':
        return MaterialPageRoute(builder: (_) => const ThirdScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}