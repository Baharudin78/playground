import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

int nilai = 0;

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(nilai.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      nilai = nilai + 1;
                      setState(() {});
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      nilai--;
                      setState(() {});
                    },
                    child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}
