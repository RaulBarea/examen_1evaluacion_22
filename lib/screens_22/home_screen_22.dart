import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:flutter/material.dart';

class HomeScreen22 extends StatelessWidget {
   
   const HomeScreen22({Key? key}) : super(key: key);
  
   @override
   Widget build(BuildContext context) {
       return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/fondoHomeApp.jpg'), 
              ),
            ),
            child: Center(
                 child: Column(
                  children: [
                    const SizedBox(height: 500,), 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400]
                      ),
                      onPressed: () {
                        final route = MaterialPageRoute(builder: (context) => const SignUpScreen());
                        Navigator.push(context, route);
                      }, 
                      child: const Padding(
                        padding: EdgeInsets.only(left: 93, right: 93, top: 13, bottom: 13),
                        child: Text('Registrarme', style: TextStyle(fontSize: 17),),
                      ),
                    ),
                    const SizedBox(height: 17,),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        elevation: 0,
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: AppTheme22.primary22, width: 2)
                      ),
                      onPressed: () {
                        final route = MaterialPageRoute(builder: (context) => const SingInScreen22());
                        Navigator.push(context, route);
                      }, 
                      child: const Padding(
                        padding: EdgeInsets.only(left: 88, right: 88, top: 13, bottom: 13),
                        child: Text('Iniciar sesión', style: TextStyle(fontSize: 17, color: AppTheme22.primary22), maxLines: 1,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 120),
                      child: Row(
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              fixedSize: Size(60,60),
                            ),
                            color: AppTheme22.primary22,
                            icon: Icon(Icons.facebook_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              fixedSize: Size(60,60),
                            ),
                            color: AppTheme22.primary22,
                            icon: Icon(Icons.g_mobiledata_outlined),
                            onPressed: (){},
                          ),
                        ],
                      ),
                    )
                  ],
                 ),
             ),
          ),
       );
   }
}