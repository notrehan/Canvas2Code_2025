import 'package:flutter/material.dart';

class TodayClassesWidget extends StatelessWidget {
  const TodayClassesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {"title": "Computer Graphics", "time": "8 AM - 10 AM"},
      {"title": "Economics", "time": "10 AM - 11 AM"},
      {"title": "Economics", "time": "11 AM - 12 PM"},
      {"title": "Lunch break", "time": "12 PM - 1 PM"},
      {"title": "Algorithm Analysis", "time": "1 PM - 2 PM"},
      {"title": "Python", "time": "2 PM - 3 PM"},
      {"title": "Honors", "time": "3 PM - 4 PM"},
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFF7F7F7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Todays classes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...List.generate(classes.length, (index) {
            final c = classes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Text("${index + 1}.",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(c["title"]!,
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500)),
                        Text(c["time"]!,
                            style: const TextStyle(
                                fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
