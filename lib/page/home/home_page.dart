// ignore_for_file: public_member_api_docs, sort_constructors_first
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
            icon: const Icon(Icons.chat_outlined),
            iconSize: 30,
          )
        ],
        backgroundColor: Colors.black,
      ),

      
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
        return Column (
          children: [
            SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const ImageAvatar(fotoImage: 'assets/images/foto_be.jpg', nameImage: 'cristianostroher');
                },
              ),
            ),
            Column(
              children: [
                Container(
                  height: 70,
                  padding: const EdgeInsets.all(10),
                  color: Colors.black87,
                  child:  Row(
                    children: [
                      
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/foto_be.jpg'),
                      ),
                      const SizedBox(width: 10),

                      const Text(
                        'cristiano.stroher45',
                        style: TextStyle(
                          color: Color.fromARGB(255, 220, 214, 214),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 172),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz_outlined),
                          iconSize: 20,
                          color: const Color.fromARGB(255, 220, 214, 214),
                        ),
                     

                  ],
                  ),                
                ),
                Container(
                  height: 400,
                  color: Colors.green,
                  child: Image.asset('assets/images/foto_be.jpg',
                  fit: BoxFit.cover),
                  ),
                Container(
                  height: 50,
                  color: Colors.black87,
                  child: Row(children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border),
                    iconSize: 30,
                    color: const Color.fromARGB(255, 220, 214, 214),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline),
                      iconSize: 30,
                      color: const Color.fromARGB(255, 220, 214, 214),
                    ),
                    Transform.rotate(
                      angle: -45 * (3.141592653589793 / 180),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send_outlined),
                        iconSize: 28,
                        color: const Color.fromARGB(255, 220, 214, 214),
                      ),
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
            )

          ],
        );
       
      },
      ),
      );

                  
    
      
  }
}

