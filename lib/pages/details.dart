import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class DetailsBook extends StatelessWidget {
  DetailsBook({super.key, required this.book});
  final Map book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Detalles del libro'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.explore)),
            IconButton(onPressed: ()async{
              await Share.share("text");
            }, icon: Icon(Icons.share))
          ],
        ),
      body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network("https://books.google.com/books?id=zyTCAlFPjgYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Google Book",style: TextStyle(fontSize: 23),),
                ),
              ],
            ),
          ),
          Text("2020-09-13",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text("Páginas: 280",style: TextStyle(fontSize: 16)),
          Text("Here is the story behind one of the most remarkable Internet successes of our time. Based on scrupulous research and extraordinary access to Google",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 16),)
        ],
      ),
    ));
  }
}
