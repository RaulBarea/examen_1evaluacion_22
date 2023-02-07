import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/widgets_22/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';

class ReservasScreen22 extends StatefulWidget {


  const ReservasScreen22({Key? key}) : super(key: key);

  @override
  State<ReservasScreen22> createState() => _ReservasScreen22State();
}

class _ReservasScreen22State extends State<ReservasScreen22> {
  final MaterialStateProperty<Color?>? colorBtn = MaterialStateProperty.all(const Color(0xFFFFFFFF));
  List<bool> estadoBtn = [false, false, false, false, false, false, false];
  
  List<bool> reservasL = [false, false, false, false, false, false, false, false];
  List<bool> reservasM = [false, false, false, false, false, false, false, false];
  List<bool> reservasX = [false, false, false, false, false, false, false, false];
  List<bool> reservasJ = [false, false, false, false, false, false, false, false];
  List<bool> reservasV = [false, false, false, false, false, false, false, false];
  List<bool> reservasS = [false, false, false, false, false, false, false, false];
  List<bool> reservasD = [false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text('Reservas'),
        actions: const[
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 35),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[0] = !estadoBtn[0];
                            }else if(estadoBtn[1]){//Ya se ha pulsado un boton
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[0] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('L', style: TextStyle(color: Colors.black),),
                              Text('19', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[0]){//Ya se ha pulsado un boton
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[1] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('M', style: TextStyle(color: Colors.black),),
                              Text('20', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[0]){//Ya se ha pulsado un boton
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[0] = !estadoBtn[0];
                            }else if(estadoBtn[1]){
                              estadoBtn[1] = !estadoBtn[1];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[2] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('X', style: TextStyle(color: Colors.black),),
                              Text('21', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[0]){//Ya se ha pulsado un boton
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[0] = !estadoBtn[0];
                            }else if(estadoBtn[1]){
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[2] = !estadoBtn[2];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[3] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('J', style: TextStyle(color: Colors.black),),
                              Text('22', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[0]){//Ya se ha pulsado un boton
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[0] = !estadoBtn[0];
                            }else if(estadoBtn[1]){
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[3] = !estadoBtn[3];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[4] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('V', style: TextStyle(color: Colors.black),),
                              Text('23', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[0]){//Ya se ha pulsado un boton
                              estadoBtn[5] = !estadoBtn[5];
                              estadoBtn[0] = !estadoBtn[0];
                            }else if(estadoBtn[1]){
                              estadoBtn[5] = !estadoBtn[5];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[5] = !estadoBtn[5];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[5] = !estadoBtn[5];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[4] = !estadoBtn[4];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[6]){
                              estadoBtn[5] = !estadoBtn[5];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[5] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('S', style: TextStyle(color: Colors.black),),
                              Text('24', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            if(!estadoBtn[0] && !estadoBtn[1] && !estadoBtn[2] && !estadoBtn[3] && 
                            !estadoBtn[4] && !estadoBtn[5] && !estadoBtn[6]){//No seha pulsado ningun boton
                              estadoBtn[6] = !estadoBtn[6];
                            }else if(estadoBtn[1]){//Ya se ha pulsado un boton
                              estadoBtn[6] = !estadoBtn[6];
                              estadoBtn[1] = !estadoBtn[1];
                            }else if(estadoBtn[2]){
                              estadoBtn[6] = !estadoBtn[6];
                              estadoBtn[2] = !estadoBtn[2];
                            }else if(estadoBtn[3]){
                              estadoBtn[6] = !estadoBtn[6];
                              estadoBtn[3] = !estadoBtn[3];
                            }else if(estadoBtn[4]){
                              estadoBtn[6] = !estadoBtn[6];
                              estadoBtn[4] = !estadoBtn[4];
                            }else if(estadoBtn[5]){
                              estadoBtn[6] = !estadoBtn[6];
                              estadoBtn[5] = !estadoBtn[5];
                            }else if(estadoBtn[0]){
                              estadoBtn[0] = !estadoBtn[0];
                              estadoBtn[6] = !estadoBtn[6];
                            }
                          });
                        },
                        backgroundColor: estadoBtn[6] ? AppTheme22.primary22 : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text('D', style: TextStyle(color: Colors.black),),
                              Text('25', style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomCardTipo2(nombre: 'Padel', hora: '8:00 - 9:30', duracion: 'Duracion: 1:30h', precio: '10,99€',),
              const CustomCardTipo2(nombre: 'Fútbol', hora: '9:30 - 11:00', duracion: 'Duracion: 1:30h', precio: '19,99€',),
              const CustomCardTipo2(nombre: 'Baloncesto', hora: '11:00 - 12:30', duracion: 'Duracion: 1:30h', precio: '14,99€',),
              const CustomCardTipo2(nombre: 'Padel', hora: '12:30 - 14:00', duracion: 'Duracion: 1:30h', precio: '10,99€',),
              const CustomCardTipo2(nombre: 'Fútbol', hora: '16:00 - 17:30', duracion: 'Duracion: 1:30h', precio: '19,99€',),
              const CustomCardTipo2(nombre: 'Piscina', hora: '17:30 - 19:00', duracion: 'Duracion: 1:30h', precio: '8,99€',),
              const CustomCardTipo2(nombre: 'Piscina', hora: '19:00 - 20:30', duracion: 'Duracion: 1:30h', precio: '8,99€',),
              const CustomCardTipo2(nombre: 'Baloncesto', hora: '20:30 - 22:00', duracion: 'Duracion: 1:30h', precio: '14,99€',),
            ],
          ),
        ),
      )
    );
  }
}
