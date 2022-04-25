import 'package:flutter/material.dart';

class BottomSheetLearn extends StatelessWidget {
  const BottomSheetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("photo"),
                        title: Text("Photo"),
                        leading: Icon(Icons.photo),
                      ),
                      ListTile(
                        onTap: () => print("messege"),
                        title: Text("Messege"),
                        leading: Icon(Icons.message),
                      ),
                      ListTile(
                        onTap: () => print("telepon"),
                        title: Text("Telepon"),
                        leading: Icon(Icons.call),
                      ),
                      ListTile(
                        onTap: () => print("share"),
                        title: Text("Share"),
                        leading: Icon(Icons.share),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        title: Text("Cancel"),
                        leading: Icon(Icons.cancel),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("Muncul kan")),
      ),
    );
  }
}
