import 'package:flutter/material.dart';

class BigTitleWidget extends StatelessWidget {
  const BigTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          "Your Favorite",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Streams",
          style: TextStyle(
            color: Color(0xff6AFF9B),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
