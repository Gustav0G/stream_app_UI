import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircleAvatar(
                radius: 2,
                backgroundColor: Color(0xff68FF9b),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 2,
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 2,
                backgroundColor: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
