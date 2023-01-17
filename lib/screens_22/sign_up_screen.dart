import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:examen_1evaluacion_22/widgets_22/widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
   
   const SignUpScreen({Key? key}) : super(key: key);
  
   @override
   Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'usuario': 'rbarea',
      'nombre': 'Raul',
      'apellidos': 'Barea Rodriguez',
      'email': 'rbareajunior@gmail.com',
      'contraseña':'123456',
      'confirmar': '123456',
    };

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const SizedBox(height: 60,),
              const FlutterLogo(size: 120,),
              const SizedBox(height: 60,),
              CustomTextFormFieldSignUp(
                hintText: 'Usuario',
                labelText: 'Usuario',
                suffixIcon: Icons.alternate_email_rounded,
                formProperty: 'usuario',
                formValues: formValues,
              ),
              const SizedBox(height: 25,),
              CustomTextFormFieldSignUp(
                hintText: 'Nombre',
                labelText: 'Nombre',
                suffixIcon: Icons.account_circle_rounded,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 25,),
              CustomTextFormFieldSignUp(
                hintText: 'Apellidos',
                labelText: 'Apellidos',
                suffixIcon: Icons.group_rounded,
                formProperty: 'contraseña',
                formValues: formValues,
              ),
              const SizedBox(height: 25,),
              CustomTextFormFieldSignUp(
                hintText: 'E-mail',
                labelText: 'E-mail',
                suffixIcon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 25,),
              CustomTextFormFieldPassword(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                suffixIcon: Icons.lock_outline_rounded,
                obscureText: true,
                formProperty: 'contraseña',
                formValues: formValues,
              ),
              const SizedBox(height: 25,),
              CustomTextFormFieldPassword(
                hintText: 'Confirmar contraseña',
                labelText: 'Confirmar contraseña',
                suffixIcon: Icons.lock_outline_rounded,
                obscureText: true,
                formProperty: 'confirmar',
                formValues: formValues,
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {

                  FocusScope.of(context).requestFocus(FocusNode());

                  if( !myFormKey.currentState!.validate() ){
                    print('Formulario no valido');
                    return;
                  }
                  print(formValues);

                  final route = MaterialPageRoute(builder: (context) => const SingInScreen22());
                  Navigator.pushReplacement(context, route);
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Sign up',style: TextStyle(fontSize: 15),))
                  ),
                )
              ),
              const SizedBox(height: 80,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
      
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) => const HomeScreen22());
          Navigator.pushReplacement(context, route);
        },
        child: const Icon(Icons.close_outlined),
      ),
    );
  }
}