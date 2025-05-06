import 'package:flutter/material.dart';

Widget infoCard(String title, String subtitle, bool haveIcon, IconData? icon) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.08),
          spreadRadius: 1,
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(subtitle, style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ),
        !haveIcon
            ? CircularProgressIndicator(
              value:
                  title == "Today's plan"
                      ? 0.1
                      : title == "Energy available"
                      ? 0.9
                      : 0.5,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                title == "Today's plan"
                    ? Colors.grey
                    : title == "Energy available"
                    ? Colors.blue
                    : Colors.orange,
              ),
              strokeWidth: 6,
            )
            : SizedBox(child: Icon(icon)),
      ],
    ),
  );
}
