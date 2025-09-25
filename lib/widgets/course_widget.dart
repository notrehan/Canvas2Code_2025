import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final Color color;
  final int attendance;
  final String labs;
  final String percentage;
  final IconData icon;

  const CourseCard({
    super.key,
    required this.title,
    required this.color,
    required this.attendance,
    required this.labs,
    required this.percentage,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 150, // fixed width for grid alignment
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.4), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 12),

          // Title
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 12),

          // Values row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _infoItem(Icons.event, "$attendance"),
              _infoItem(Icons.article_outlined, labs),
              _infoItem(Icons.percent, percentage),
            ],
          )
        ],
      ),
    );
  }

  // Small info item widget
  Widget _infoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.grey.shade600),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}
