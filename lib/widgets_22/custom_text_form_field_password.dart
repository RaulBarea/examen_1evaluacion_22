import 'package:flutter/material.dart';

class CustomTextFormFieldPassword extends StatelessWidget {
   
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  
  final String? formProperty;
  final Map<String, String>? formValues;

  String? getPassword(){
    String? pw;
    pw = formValues!['contraseña'];
    return pw;
  }

  const CustomTextFormFieldPassword({Key? key, this.hintText, this.labelText, this.suffixIcon, this.obscureText=false, this.formProperty, this.formValues, this.keyboardType}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    bool validaContrasenia = false;
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues![formProperty!] = value,
      validator: (value) {
        if(formValues!['contraseña']!.isNotEmpty){
          validaContrasenia = true;
          if(validaContrasenia){
            if(formValues!['contraseña']!.length < 8){
              return "Minimo 8 caracteres";
            }
            if(formValues!['contraseña'] != formValues!['confirmar']){
              return"Las contraseñas tienen que coincidir";
            }
          }
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}