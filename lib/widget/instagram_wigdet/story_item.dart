import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: NetworkImage("https://picsum.photos/536/354"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
