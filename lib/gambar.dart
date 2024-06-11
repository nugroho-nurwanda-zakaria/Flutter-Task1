import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Gambar extends StatefulWidget {
const Gambar({super.key});

  @override
  State<Gambar> createState() => _GambarState();
}

class _GambarState extends State<Gambar> {
  @override
  Widget build(BuildContext context) {
 
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        leading: const Icon(Icons.task),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text('Nugroho - Task 1'),
      ),

     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width * 0.8,
              height: height * 0.60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 211, 44, 32),
                      blurRadius: 3,
                      spreadRadius: 20),
                ],
              ),
              child: ClipRRect(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://krita-artists.org/uploads/default/original/3X/f/3/f35a3a762b8661b3c7fd98e3e3cb29e513b845f5.jpeg',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}