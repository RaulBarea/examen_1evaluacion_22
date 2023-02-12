import 'dart:ui';

import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:examen_1evaluacion_22/widgets_22/widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
   
   const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   
   bool _sliderEnabled =  false;
  final myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
    'usuario': 'rbarea',
    'nombre': 'Raul Barea Rodriguez',
    'email': 'rbareajunior@gmail.com',
    'contraseña':'123456',
    'confirmar': '123456',
  };
   
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, MaterialPageRoute(builder: (context) => const HomeScreen22())),
            );
          }
        )
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 210, top: 7),
                child: Text('Regístrate', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 20,),
              CustomTextFormFieldSignUp(
                hintText: 'Usuario',
                labelText: 'Usuario',
                suffixIcon: Icons.alternate_email_rounded,
                formProperty: 'usuario',
                formValues: formValues,
              ),
              const SizedBox(height: 10,),
              CustomTextFormFieldSignUp(
                hintText: 'Nombre y Apellidos',
                labelText: 'Nombre y Apellidos',
                suffixIcon: Icons.account_circle_rounded,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 10,),
              CustomTextFormFieldSignUp(
                hintText: 'E-mail',
                labelText: 'E-mail',
                suffixIcon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 10,),
              CustomTextFormFieldPasswordSignUp(
                fieldKey: GlobalKey<FormFieldState<String>>(),
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                formProperty: 'contraseña',
                formValues: formValues,
                onFieldSubmitted: (String value) { 
                  setState(() {
                    formValues['contraseña'] = value;
                  });
                },
                validator: (String? value) { 
                  if(value!.length < 8){
                    return "Minimo 8 caracteres";
                  }
                }, 
                onSaved: (String? newValue) {
                  
                }, 
              ),
              const SizedBox(height: 10,),
              CustomTextFormFieldPasswordSignUp(
                fieldKey: GlobalKey<FormFieldState<String>>(),
                hintText: 'Confirmar contraseña',
                labelText: 'Confirmar contraseña',
                formProperty: 'confirmar',
                formValues: formValues,
                onFieldSubmitted: (String value) { 
                  setState(() {
                    formValues['contraseña'] = value;
                  });
                },
                validator: (String? value) { 
                  if(value!.length < 8){
                    return "Minimo 8 caracteres";
                  }
                }, 
                onSaved: (String? newValue) {
                  
                }, 
              ),
              const SizedBox(height: 45,),
              SwitchListTile.adaptive(
                activeColor: Color.fromARGB(255, 33, 66, 92),
                value: _sliderEnabled, 
                title: Text('Términos y condiciones y Política de Privacidad', maxLines: 2, overflow: TextOverflow.fade,),
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {
                    
                  });
                }
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 66, 92),
                ),
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
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text('Crear una cuenta', style: TextStyle(fontSize: 17, color: Colors.white),),
                      ),)
                  ),
                )
              ),
              const SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}