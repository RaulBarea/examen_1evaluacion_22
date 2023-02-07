import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/screens_22/pasarela_pago_screen.dart';
import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatefulWidget {
   
final String nombre;
final String duracion;
final String hora;
final String precio;

  const CustomCardTipo2({Key? key, required this.nombre, required this.hora, required this.duracion, required this.precio}) : super(key: key);

  @override
  State<CustomCardTipo2> createState() => _CustomCardTipo2State();
}

class _CustomCardTipo2State extends State<CustomCardTipo2> {

  String btnReserva = 'Reservar';
  Color? colorBtn = AppTheme22.primary22;

  void cambiarbtn(){
    setState(() {
      if(btnReserva == 'Reservar'){
        btnReserva = 'Cancelar reserva';
        colorBtn = Colors.grey[600];
      }else{
        btnReserva = 'Reservar';
        colorBtn = AppTheme22.primary22;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          ExpansionTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(widget.hora),
            ), 
            title: Text('${widget.nombre} | ${widget.precio}' ),
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Icon(Icons.access_time_rounded),
              ),
              Text(widget.duracion),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: (){
                    cambiarbtn();
                    final route = MaterialPageRoute(builder: (context) => PagoScreen(widget.precio));
                    Navigator.push(context, route);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorBtn,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    
                  ), 
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10,),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text(btnReserva, style: const TextStyle(fontSize: 15),))
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      
    );
  }
}