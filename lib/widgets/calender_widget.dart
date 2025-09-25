import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 238, 238, 238), // 🔹 flat light gray bg
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Calendar",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, mainAxisSpacing: 4, crossAxisSpacing: 4),
            itemBuilder: (context, index) {
              final day = index + 1;
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: (day == 10 || day == 13 || day == 22)
                      ? Colors.redAccent
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "$day",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: (day == 10 || day == 13 || day == 22)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
