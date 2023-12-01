import 'package:flutter/material.dart';
import 'package:united2/tabs/first_tab.dart';
import 'package:united2/tabs/second_tab.dart';
import 'package:united2/tabs/third_tab.dart';

class CurvedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjust the height as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 194, 10, 10), Color.fromARGB(255, 36, 2, 2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'M I N I 🎮A M E S',
          style: TextStyle(
            fontSize: 28, // Adjust the font size
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), // Adjust the height to match the CurvedAppBar
          child: CurvedAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 194, 10, 10), Color.fromARGB(255, 36, 2, 2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Color.fromARGB(255, 204, 9, 9),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.white,
                ),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.message_rounded,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
