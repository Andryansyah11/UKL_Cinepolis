import 'package:cinepolis/views/cinema.dart';
import 'package:cinepolis/views/homepage.dart';
import 'package:cinepolis/views/loginpage.dart';
import 'package:cinepolis/views/movie.dart';
import 'package:cinepolis/views/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinepolis',
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (_) => Splashscreen(), 
        'login': (_) => Loginpage(),
        'home': (_) => Homepage(),
        'movie': (_) => MoviePage(),
        'cinema': (_) => Cinemapage(),
        }
    );
  }
}