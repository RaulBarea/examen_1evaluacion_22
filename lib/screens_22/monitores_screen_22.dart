import 'package:flutter/material.dart';

class MonitoresScreen22 extends StatelessWidget {
   
  const MonitoresScreen22({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
        actions: const[
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 35),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const[
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
                maxRadius: 120,
              ),
              SizedBox(height: 5,),
              Text('Rafa Nadal', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
                maxRadius: 120,
              ),
              SizedBox(height: 5,),
              Text('Gisela Pulido', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
                maxRadius: 120,
              ),
              SizedBox(height: 5,),
              Text('Raúl González', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
                maxRadius: 120,
              ),
              SizedBox(height: 5,),
              Text('Mireia Belmonte', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}