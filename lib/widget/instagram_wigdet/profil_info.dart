import 'package:flutter/material.dart';

class ProfilInfo extends StatelessWidget {
  const ProfilInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.yellow,
              ],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.grey[300],
            border: Border.all(color: Colors.white),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://picsum.photos/536/354"),
            ),
          ),
        ),
      ],
    );
  }
}
