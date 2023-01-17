import 'package:examen_1evaluacion_22/screens_22/reservas_screen_22.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  final String titulo;
  final ImageProvider<Object> image;

  const CustomCardTipo1({Key? key, required this.titulo, required this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            image: image, 
            placeholder: const AssetImage('assets/Loading_icon.gif'),
          ),
          const SizedBox(height: 10,),
          ListTile(
            title: Text(titulo,),
            subtitle: const Text('Aliquip sint irure occaecat tempor dolor ea sint quis. Ad ullamco in elit aute do mollit deserunt proident non nisi non. Sunt consectetur amet ex esse enim nisi sint fugiat ea aute ipsum qui incididunt ex. Velit eiusmod labore veniam Lorem. Deserunt laboris culpa amet sit minim laboris ex cupidatat officia eu tempor.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    final route = MaterialPageRoute(builder: (context) => const ReservasScreen22());
                    Navigator.push(context, route);
                  },
                  style: TextButton.styleFrom(primary: Colors.green), 
                  child: const Text('Reservar', style: TextStyle(decoration: TextDecoration.underline, fontSize: 15),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}