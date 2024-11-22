import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/styles.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final String value;

  const MenuItem({
    required this.text,
    required this.icon,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: AppStyles.profileDescriptionStyle.copyWith(fontSize: 16),
            ),
          ),
          Text(
            value,
            style: AppStyles.profileDescriptionStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
