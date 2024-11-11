
import 'package:flutter/material.dart';
import '../components/first_tab_component.dart';
import '../components/second_tab_component.dart';

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.info), text: 'Details'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstTabComponent(),
            SecondTabComponent(),
          ],
        ),
      ),
    );
  }
}
