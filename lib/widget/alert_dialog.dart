import 'dart:js';

import 'package:flutter/material.dart';

class AlertDialog extends StatefulWidget {
  const AlertDialog({Key? key}) : super(key: key);

  @override
  State<AlertDialog> createState() => _AlertDialogState();
}

String name = "Klik";

class _AlertDialogState extends State<AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(context: context, builder: (context) => AlertDialog());
            },
            child: Text(name)),
      ),
    );
  }
}
