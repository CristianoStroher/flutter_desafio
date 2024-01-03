// widgets/post_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PostWidget {
  static Widget buildPost(int index) {
    return Column(
      children: [
        Container(
          height: 400,
          color: Colors.green,
          child: Image.asset('assets/images/foto_be.jpg', fit: BoxFit.cover),
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
        const Text('1.463 curtidas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
