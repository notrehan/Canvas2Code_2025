import 'package:flutter/material.dart';

class DashboardStatsRow extends StatelessWidget {
  const DashboardStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Attendance Card
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                const Text(
                  "Semester attendance",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                // Fake gauge placeholder
                SizedBox(
                  height: 120,
                  child: Center(
                    child: Text(
                      "66",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Your attendance Score is average",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "Last check on 21 Feb",
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("What these stats mean?"),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),

        // Notifications Card
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: const Text("Exam registration"),
                  subtitle: const Text("19 Feb 2024"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.email, color: Colors.blue),
                  title: const Text("Verify your email"),
                  subtitle: const Text("20 Feb 2024"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.warning, color: Colors.red),
                  title: const Text("Email verification failed"),
                  subtitle: const Text("22 Feb 2024"),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "View all →",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),

        // Exam Schedule Card
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Internal exam schedule",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.code, color: Colors.blue),
                  title: const Text("Python"),
                  subtitle: const Text("23 Feb 2024"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.computer, color: Colors.green),
                  title: const Text("Compiler design"),
                  subtitle: const Text("24 Feb 2024"),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.graphic_eq, color: Colors.pink),
                  title: const Text("Computer graphics"),
                  subtitle: const Text("25 Feb 2024"),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "View all →",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
