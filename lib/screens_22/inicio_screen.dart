import 'dart:ui';

import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/screens_22/tarjeta_credito_screen.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
   
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: (){
                  final route = MaterialPageRoute(builder: (context) => const TarjetaCreditoScreen());
                  Navigator.push(context, route);
                }, 
                child: Row(
                  children: [
                    Icon(Icons.credit_card_outlined, color: Colors.black,),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Text('Registra tu tarjeta de credito', style: TextStyle(fontSize: 15, color: Colors.black),),
                          Text('Completa tus pagos para reservar los partidos', style: TextStyle(fontSize: 10, color: Colors.grey), maxLines: 2,),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.black,),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}