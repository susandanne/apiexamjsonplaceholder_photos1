import 'package:apiexamjsonplaceholder_photos/HomeActivity.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(

      ),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white
        )
      ),
    );
  }
}
