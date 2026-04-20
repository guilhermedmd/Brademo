import 'package:exercicio1/card_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CardImage(textoImg: "Cachorro corinthiano", linkImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkln-bcpFgUCp9x6unY11UKPfIZsuWEDZg2g&s",),
          CardImage(textoImg: "Paris", linkImg: "https://images.contentstack.io/v3/assets/blt06f605a34f1194ff/bltfbb238bc19bcccc5/65afe0ca9b1ffef007e0f50d/BCC-2023-EXPLORER-MAGAZINE_UPDATES-PARIS_FACTS-HEADER_Mobile.jpg?fit=crop&disable=upscale&auto=webp&quality=60&crop=smart",),
          CardImage(textoImg: "Roma", linkImg: "https://viagem.cnnbrasil.com.br/wp-content/uploads/sites/5/2025/07/Daniela-Filomeno-Foro-Romano.jpg?w=849&h=477&crop=0",),
          CardImage(textoImg: "Baku", linkImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN35Vsyv4sOyNG_GQPlrAkllFbY9bUrVjpWA&s",),
          CardImage(textoImg: "Nova Iorque", linkImg: "https://www.maladeaventuras.com/wp-content/uploads/2019/03/melhores-bairros-para-se-hospedar-em-nyc.jpg",),
          CardImage(textoImg: "Peru", linkImg: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGyvQekWwaC7LPWiGPlHyPeY4nNQLwGI5Wsw&s",),
        ],
        ),
    );
  }
}
