import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de uso de imagens"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 750,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                'https://scontent.fbjp1-1.fna.fbcdn.net/v/t39.30808-6/302410221_445518894282892_7546335991241802933_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=uc8297yeBTkQ7kNvwEzMD7F&_nc_oc=Adpa6EwMgSm7aNf4kM47sSP8Adi9IxnfhesGSNy9V6_RLyuiBTJ0SZYtOPfZf8T8UTMmmiSDazcXafZHFfLBpLMs&_nc_zt=23&_nc_ht=scontent.fbjp1-1.fna&_nc_gid=dRRUt6oTGhwW0ExMRpmSRA&_nc_ss=7a30f&oh=00_AfyrVJ1b1zHarzUVjO9B_yjWFKzpXQWPrDUQ_U4VbUhayw&oe=69C639EC',
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            height: 250,
            width: 600,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'https://wallpapers.com/images/featured-full/imagens-de-paisagens-a3hr6gk3xfx36dyg.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
