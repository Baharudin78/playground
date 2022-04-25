import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({Key? key}) : super(key: key);

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        Center(
          child: Text("Kamera"),
        ),
        Center(
          child: Text("Chats"),
        ),
        Center(
          child: Text("Status"),
        ),
        Center(
          child: Text("Calls"),
        ),
      ]),
    );
  }
}
