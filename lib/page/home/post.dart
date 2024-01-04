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

   String quebrarLinhaLimite(String texto, int limite) {
    if (texto.length <= limite) {
      return texto;
    } else {
      int indiceQuebra = texto.lastIndexOf(' ', limite);
      if (indiceQuebra == -1) {
        return texto.substring(0, limite) + '\n' + quebrarLinhaLimite(texto.substring(limite), limite);
      } else {
        return texto.substring(0, indiceQuebra) + '\n' + quebrarLinhaLimite(texto.substring(indiceQuebra + 1), limite);
      }
    }
  }

  Widget buildPost(int index) {

    String descricao = 'GESTANTES, A 2ª DOSE É ESSENCIAL PARA A SUA PROTEÇÃO E DO BEBÊ. Garanta sua segurança e saúde realizando a segunda dose da vacina.';
    final String descricaoFormatada = quebrarLinhaLimite(descricao, 35);
    const String usuario = 'cristiano.stroher45';
    
    return Column(
      children: [
        Container(
          height: 70,
          padding: const EdgeInsets.all(10),
          color: Colors.black87,
          child: Row(
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
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon:  const Icon(Icons.more_horiz),
                iconSize: 20,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
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
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.turned_in_not_outlined),
                iconSize: 30,
                color: const Color.fromARGB(255, 220, 214, 214),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          padding: const EdgeInsets.all(10),
          child: const Row(
            children: [
               Text(
                '1.463 curtidas',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
         Container(
           padding: const EdgeInsets.all(10),
           child: Row(
            
            children: [
                Text(
                  '$usuario\u200B   $descricaoFormatada',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 220, 214, 214),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
              ),
                                 
            ],
                 ),
         )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPost(0); // Um índice desejado
  }

  
}
