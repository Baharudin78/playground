import 'package:flutter/material.dart';
import 'package:playground/widget/instagram_wigdet/info_follow.dart';
import 'package:playground/widget/instagram_wigdet/profil_info.dart';
import 'package:playground/widget/instagram_wigdet/story_item.dart';
import 'package:playground/widget/instagram_wigdet/tab_item.dart';

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
                //foto profil
                ProfilInfo(),

                //Membuat item follow
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

          //Membuat nama
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

          //Membaut text deskripsi
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

          //mmembuat Hyperlink text
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

          //Membuat button edit profil
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit profil",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),

          //Membuat Story Highlight
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Story 1"),
                  StoryItem("Story 2"),
                  StoryItem("Story 3"),
                  StoryItem("Story 4"),
                  StoryItem("Story 5"),
                  StoryItem("Story 6"),
                  StoryItem("Tambah Story"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(true, Icons.grid_on_outlined),
              TabItem(false, Icons.person_pin_circle_outlined),
            ],
          ),
          GridView.builder(
            itemCount: 150,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 500}/536/354",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
