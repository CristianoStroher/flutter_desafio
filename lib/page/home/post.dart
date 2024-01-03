import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String fotoImage;
  final String nameImage;

  const Post({
    Key? key,
    required this.fotoImage,
    required this.nameImage,
  }) : super(key: key);

  Widget buildPost(int index) {
    return Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.all(10),
          color: Colors.black87,
          child: const Row(
            children: [
               CircleAvatar(
                backgroundImage: AssetImage('assets/images/foto_be.jpg'),
              ),
               SizedBox(width: 10),
               Text(
                'cristiano.stroher45',
                style: TextStyle(
                  color: Color.fromARGB(255, 220, 214, 214),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.green,
          child: Image.asset(fotoImage, fit: BoxFit.cover),
        ),
        Container(
          height: 70,
          color: Colors.black87,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.chat_bubble),
                iconSize: 30,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.paperplane),
                iconSize: 30,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
              const SizedBox(width: 215),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.turned_in_not_outlined),
                iconSize: 30,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
            ],
          ),
        ),
        const Text(
          '1.463 curtidas',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPost(0); // Um índice desejado
  }
}
