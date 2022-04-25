import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                labelText: "Email",
                prefixIcon: Icon(Icons.mail),
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              obscureText: isHidden,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                labelText: "Password",
                prefixIcon: Icon(Icons.security),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
