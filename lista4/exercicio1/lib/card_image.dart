import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String? textoImg;
  final String? linkImg;

  const CardImage({super.key, this.textoImg, this.linkImg});
  @override
  Widget build(BuildContext context) {
    return  Card(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                "$linkImg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover ,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    height: 60,
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text("$textoImg", style: TextStyle(color: Colors.white),)
                      )
                      ),
                
              ],
            ),
          ],
        ),
    );
  }
}
