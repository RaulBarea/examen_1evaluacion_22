import 'package:examen_1evaluacion_22/screens_22/mis_reservas_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/pasarela_pago_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:flutter/material.dart';

class ListviewScreen22 extends StatelessWidget {
   
  const ListviewScreen22({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 35),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const FadeInImage(
                image: NetworkImage('https://www.tuescuelapadel.com/wp-content/uploads/2020/05/fabricante_pista_padel.jpg'), 
                placeholder: AssetImage('assets/Loading_icon.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const PistasScreen22());
                  Navigator.pushReplacement(context, route);
                }, 
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Pistas', style: TextStyle(fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 215),
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const FadeInImage(
                image: NetworkImage('https://images.hola.com/imagenes/estar-bien/20200205159628/errores-que-evita-entrenador-personal/0-777-664/errores-entrenador-personal-t.jpg'), 
                placeholder: AssetImage('assets/Loading_icon.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const MonitoresScreen22());
                  Navigator.push(context, route);
                }, 
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Monitores', style: TextStyle(fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 184),
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                image: NetworkImage('https://nuevecuatrouno.com/wp-content/uploads/2021/06/pistas-adarraga-1.jpg'), 
                placeholder: AssetImage('assets/Loading_icon.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const ReservasScreen22());
                  Navigator.push(context, route);
                }, 
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Reservar pista', style: TextStyle(fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 150),
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_u4p5zLwABT1RF-bX5D0yFWNbJqsc9441m8BS9tCqimYSQDjjfXKn3jBe8SB1T-jiBZQ&usqp=CAU'), 
                placeholder: AssetImage('assets/Loading_icon.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const PagoScreen());
                  Navigator.push(context, route);
                }, 
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Mis reservar', style: TextStyle(fontSize: 18),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 166),
                          child: Icon(Icons.add),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}