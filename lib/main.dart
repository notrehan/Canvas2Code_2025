import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:canva2code/widgets/course_widget.dart'; // 👈 import

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
        scaffoldBackgroundColor: const Color(0xFFF9FAFB),
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
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(color: Colors.grey.shade200, width: 1),
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
                      child: const Icon(Icons.person, color: Colors.black54),
                    ),
                    const SizedBox(height: 20),
                    Icon(Icons.show_chart, color: Colors.grey.shade700),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Icon(Icons.settings, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Navbar
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

                // ✅ Courses Section
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Row of course cards
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
                          ],
                        ),
                      )
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
