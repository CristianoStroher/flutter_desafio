import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio/page/home/image_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 40,
            color: Color.fromRGBO(230, 230, 230, 1),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            iconSize: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.chat_bubble_text),
            iconSize: 30,
          )
        ],
        backgroundColor: Colors.black,
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home, size: 30, color: Colors.white),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.movie_creation_outlined, size: 30, color: Colors.white),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.local_mall_outlined, size: 30, color: Colors.white),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/foto_be.jpg'),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: 10, // Altere para o número total de postagens
        itemBuilder: (BuildContext context, int index) {
          return buildPost(index);
        },
      ),
    );
  }

  // Função auxiliar para criar um widget de postagem
  Widget buildPost(int index) {
    return Column(
      children: [
        SizedBox(
          height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const ImageAvatar(fotoImage: 'assets/images/foto_be.jpg', nameImage: 'cristianostroher');
            },
          ),
        ),
        SizedBox(
          height: 400,
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
