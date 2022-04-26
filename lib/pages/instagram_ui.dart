import 'package:flutter/material.dart';
import 'package:playground/widget/instagram_wigdet/info_follow.dart';
import 'package:playground/widget/instagram_wigdet/profil_info.dart';

class InstagramUI extends StatelessWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Hawaariyyun78",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
            child: Row(
              children: [
                ProfilInfo(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoFollow("150", "Post"),
                      InfoFollow("2000", "Follower"),
                      InfoFollow("900", "Following"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Text(
              "Baharudin Maulana",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: RichText(
              text: const TextSpan(
                text:
                    "Seiringnya waktu mungkin saja versi diatas sudah tertinggal, jadi harap selalu cek dan gunakan versi terbaru ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#Hastag",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Text(
              "Go Here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit profil",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
