import 'package:flutter/material.dart';

class FoodLog extends StatefulWidget {
  const FoodLog({super.key});

  @override
  State<FoodLog> createState() => _FoodLogState();
}

class _FoodLogState extends State<FoodLog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/food-on-table.jpg'),
            fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(

      ),
    );
  }
}
