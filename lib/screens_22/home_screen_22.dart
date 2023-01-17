import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:flutter/material.dart';

class HomeScreen22 extends StatelessWidget {
   
   const HomeScreen22({Key? key}) : super(key: key);
  
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Center(
               child: Column(
                children: [
                  const SizedBox(height: 180,),
                  const FlutterLogo(size: 200,),
                  const SizedBox(height: 90 ,),
                  ElevatedButton(
                      onPressed: () {
                        final route = MaterialPageRoute(builder: (context) => const SingInScreen22());
                        Navigator.pushReplacement(context, route);
                      }, 
                      child: const Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 17, bottom: 17),
                        child: Text('Sign in', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                  const SizedBox(height: 40,),
                  ElevatedButton(
                    onPressed: () {
                      final route = MaterialPageRoute(builder: (context) => const SignUpScreen());
                      Navigator.pushReplacement(context, route);
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 17, bottom: 17),
                      child: Text('Sign up', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ],
               ),
           ),
       );
   }
}