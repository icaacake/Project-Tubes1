import 'package:flutter/material.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi! Torreto',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none, size: 28),
                    SizedBox(width: 12),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.png'),
                      radius: 18,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),

            // Search Bar
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Calories Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.local_fire_department, color: Colors.white),
                  SizedBox(width: 12),
                  Text('Calories', style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('2500'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Workout Tutorial
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Workout Tutorial', style: TextStyle(fontSize: 16)),
                Text('See all', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 12),

            // Placeholder tutorial cards
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Custom Bottom Navigation Bar
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomAppBar(
            color: Colors.black,
            shape: CircularNotchedRectangle(),
            notchMargin: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.home_outlined), onPressed: () {}),
                  IconButton(
                    icon: Icon(Icons.school_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(width: 48), // space for FAB
                  IconButton(
                    icon: Icon(Icons.group_outlined),
                    onPressed: () {},
                  ),
                  // Icon dalam lingkaran
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.person_outline),
                  ),
                ],
              ),
            ),
          ),

          // Floating Icon (petir)
          Positioned(
            bottom: 20, // naik sedikit
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey[900],
              child: Icon(Icons.flash_on, color: Colors.white),
              elevation: 4,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
