import 'package:flutter/material.dart';

import '../widgets_22/widgets.dart';

class ProfileScreen extends StatefulWidget {

  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    return  Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 210, top: 7),
                child: Text('Perfil', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
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
              const SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}