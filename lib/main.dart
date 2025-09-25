import 'package:canva2code/widgets/cgpa_graph_widget.dart';
import 'package:canva2code/widgets/today_classes_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:canva2code/widgets/course_widget.dart';
import 'package:canva2code/widgets/profile_card.dart';
import 'package:canva2code/widgets/calender_widget.dart';
import 'package:canva2code/widgets/pending_work_widget.dart';
import 'package:canva2code/widgets/dashboard_stats_row.dart';

void main() {
  runApp(const MyDashboardApp());
}

class MyDashboardApp extends StatelessWidget {
  const MyDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 🔹 Top Navbar (full width)
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi Adarsh",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome to your dashboard",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(Icons.mic_none),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 🔹 Body (below navbar)
          Expanded(
            child: Row(
              children: [
                // Sidebar
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      right:
                          BorderSide(color: Colors.grey.shade200, width: 1),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.person,
                                color: Colors.black54),
                          ),
                          const SizedBox(height: 20),
                          Icon(Icons.show_chart, color: Colors.grey.shade700),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Icon(Icons.settings,
                            color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),

                // Main Content + Right Section
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // MAIN CONTENT (left)
                      // MAIN CONTENT (left)
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Courses Section
                          const Text(
                            "Courses",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                CourseCard(
                                  title: "Python",
                                  color: Colors.blue,
                                  attendance: 20,
                                  labs: "2 / 18",
                                  percentage: "50%",
                                  icon: Icons.code,
                                ),
                                SizedBox(width: 16),
                                CourseCard(
                                  title: "Network Lab",
                                  color: Colors.orange,
                                  attendance: 12,
                                  labs: "9 / 12",
                                  percentage: "80%",
                                  icon: Icons.network_check,
                                ),
                                SizedBox(width: 16),
                                CourseCard(
                                  title: "Compiler Design",
                                  color: Colors.green,
                                  attendance: 30,
                                  labs: "10 / 12",
                                  percentage: "33%",
                                  icon: Icons.memory,
                                ),
                                SizedBox(width: 16),
                                CourseCard(
                                  title: "Computer Graphics",
                                  color: Colors.pink,
                                  attendance: 14,
                                  labs: "2 / 10",
                                  percentage: "33%",
                                  icon: Icons.computer,
                                ),
                                SizedBox(width: 16),
                                CourseCard(
                                  title: "Economics",
                                  color: Colors.purple,
                                  attendance: 18,
                                  labs: "5 / 14",
                                  percentage: "60%",
                                  icon: Icons.auto_graph,
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "View All ->",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),

                          // 🔹 CGPA Graph + Today Classes
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                flex: 3,
                                child: CgpaGraphWidget(),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 250,
                                child: TodayClassesWidget(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const DashboardStatsRow(),
                        ],
                      ),
                    ),
                  ),
                ),


                      // RIGHT SECTION (below navbar automatically)
                      // inside DashboardScreen -> RIGHT SECTION
                      Container(
                        width: 380, // increased width
                        color: const Color.fromARGB(255, 255, 255, 255), // match scaffold bg
                        padding: const EdgeInsets.all(16),
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              ProfileCard(),
                              SizedBox(height: 20),
                              CalendarWidget(),
                              SizedBox(height: 20),
                              PendingWorkWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}