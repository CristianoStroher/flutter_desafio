import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio/page/home/image_avatar.dart';
import 'package:flutter_desafio/page/home/post.dart';

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
            width: 2,
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

      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const ImageAvatar(
                  fotoImage: 'assets/images/foto_be.jpg',
                  nameImage: 'cristianostroher');
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2, 
              itemBuilder: (BuildContext context, int index) {
                 return const Post(
                    fotoImage: 'assets/images/foto_be.jpg', 
                    nameImage: 'cristiano.stroher45',
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}