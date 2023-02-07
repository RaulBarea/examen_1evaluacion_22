import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/screens_22/inicio_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/mis_reservas_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/notificaciones_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/pasarela_pago_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/profile_screen.dart';
import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:flutter/material.dart';

class ListviewScreen22 extends StatefulWidget {
   
  const ListviewScreen22({Key? key}) : super(key: key);

  @override
  State<ListviewScreen22> createState() => _ListviewScreen22State();
}

class _ListviewScreen22State extends State<ListviewScreen22> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Playtomic'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 35),
            child: GestureDetector(
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const NotificacionesScreen());
                Navigator.push(context, route);
              },
              child: const Icon(Icons.notifications)
            )
          )
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: AppTheme22.primary22,
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        controller: _tabController,
        tabs: const [
          Tab(icon: Icon(Icons.home), text: 'Inicio'),
          Tab(icon: Icon(Icons.calendar_month), text: 'Mis reservas'),
          Tab(icon: Icon(Icons.sports_baseball), text: 'Pistas'),
          Tab(icon: Icon(Icons.person), text: 'Profile'),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          InicioScreen(),
          MisReservasScreen(),
          PagoScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}