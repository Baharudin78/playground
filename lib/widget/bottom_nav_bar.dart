import 'package:flutter/material.dart';

class BottomNavLearn extends StatefulWidget {
  const BottomNavLearn({Key? key}) : super(key: key);

  @override
  State<BottomNavLearn> createState() => _BottomNavLearnState();
}

class _BottomNavLearnState extends State<BottomNavLearn> {
  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("Profil"),
    ),
  ];

  late int index;
  @override
  void initState() {
    index = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        centerTitle: true,
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
