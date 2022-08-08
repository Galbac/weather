import 'package:flutter/material.dart';
import 'package:weather/screen/input_city.dart';
import 'package:weather/style/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.mainDarkBlue),
        primarySwatch: Colors.blue,
      ),
      home:  InputCity(),
    );
  }
}
