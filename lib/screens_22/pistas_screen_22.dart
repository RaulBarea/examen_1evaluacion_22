import 'package:examen_1evaluacion_22/widgets_22/widgets.dart';
import 'package:flutter/material.dart';

class PistasScreen22 extends StatelessWidget {
   
  const PistasScreen22({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView(
        children: const [
          CustomCardTipo1(
            titulo: 'Pista de padel',
            image: NetworkImage('https://allforpadel.com/img/cms/pistas/fx2-1.jpg'),
          ),
          CustomCardTipo1(
            titulo: 'Piscina cubierta',
            image: NetworkImage('https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg'),
          ),
          CustomCardTipo1(
            titulo: 'Campo de baloncesto',
            image: NetworkImage('https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg'),
          ),
          CustomCardTipo1(
            titulo: 'Campo de futbol',
            image: NetworkImage('https://www.lavozdegalicia.es/default/2020/07/18/00121595107321365541809/Foto/dsfgsfgswre.jpg'),
          ),
        ],
      ),
    );
  }
}

