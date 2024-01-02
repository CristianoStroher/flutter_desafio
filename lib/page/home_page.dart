// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
            icon: const Icon(Icons.chat_bubble_outline),
            iconSize: 30,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          
          return const ImageAvatar(fotoImage: 'assets/images/foto_be.jpg', nameImage: 'Cristiano Stroher');
   
        },
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String fotoImage;
  final String nameImage;

  const ImageAvatar({
    Key? key,
    required this.fotoImage,
    required this.nameImage,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return SizedBox(
    height: 100,
     child: Stack(
       children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
           ),
          ),
               
         Container(
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            border: Border.all(
               color: Colors.green,
              width: 3,
            ),
            ),
          child: CircleAvatar(
            backgroundImage: AssetImage(fotoImage),
           ),
         )
   
      ],
      ),
   );

   
  }
  
}
