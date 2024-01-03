import 'package:flutter/material.dart';

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
   return Align(
     child: Stack(
         children: [   
          Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
               ),
              ),
          
                  
            Positioned(
              left: 2.5,
              top: 2.5,
              child: Container(
                height: 75,
                width: 75,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(fotoImage),
                 ),
               ),
            ),
            Positioned(
              top: 70,
              left: 25,
              
              child: Container(
                height: 18,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  gradient: const LinearGradient (
                    colors: [
                      Colors.purple,
                    Colors.red,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )                 ),
                child: const Text('AO VIVO', style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 220, 214, 214),
                  shadows:  [
                    Shadow(
                      offset: Offset(1, 2),
                      blurRadius: 1,
                      color: Color.fromARGB(255, 68, 67, 67)
                    )
                  ]
                ),
                ),
                           
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 70,
                child: Text(nameImage, style: const TextStyle(
                  color: Color.fromARGB(255, 220, 214, 214),
                  overflow: TextOverflow.ellipsis,
                  fontSize: 12),),
              ),
            ),      
                
        ],
        ),
   );
   

   
  }
  
}