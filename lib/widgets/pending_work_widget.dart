import 'package:flutter/material.dart';

class PendingWorkWidget extends StatelessWidget {
  const PendingWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 238, 238, 238),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Pending Work",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _taskItem("AAD Assignment", "21 Feb 2024", Icons.assignment),
          _taskItem("Network Lab Program", "22 Feb 2024", Icons.wifi),
          _taskItem("CG Assignments", "22 Feb 2024", Icons.computer),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text("View all →"),
            ),
          )
        ],
      ),
    );
  }

  Widget _taskItem(String title, String date, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.deepPurple),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500)),
                Text(date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
