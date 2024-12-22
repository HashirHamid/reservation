import 'package:flutter/material.dart';
import 'package:my_new_app/home_screen.dart';
import 'package:my_new_app/reservation_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomeScreen(),
          '/reservation': (context) => const ReservationScreen(),
        },
        home: const ReservationScreen());
  }
}
