import 'package:flutter/material.dart';

class NotificacionesScreen extends StatelessWidget {
   
  const NotificacionesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nofiticaciones'),
      ),
      body: const Center(
         child: Text('NotificacionesScreen'),
      ),
    );
  }
}