import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AttendanceGauge extends StatelessWidget {
  final double percentage; // e.g. 66%

  const AttendanceGauge({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: 180, // makes it half circle
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: [
                PieChartSectionData(
                  color: Colors.red,
                  value: percentage < 40 ? percentage : 40,
                  radius: 12,
                ),
                PieChartSectionData(
                  color: Colors.orange,
                  value: percentage > 40 && percentage < 70
                      ? percentage - 40
                      : percentage > 40
                          ? 30
                          : 0,
                  radius: 12,
                ),
                PieChartSectionData(
                  color: Colors.green,
                  value: percentage > 70 ? percentage - 70 : 0,
                  radius: 12,
                ),
                PieChartSectionData(
                  color: Colors.grey.shade200,
                  value: 100 - percentage,
                  radius: 12,
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                percentage.toInt().toString(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Attendance",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              )
            ],
          ),
        ],
      ),
    );
  }
}
