import 'package:flutter/material.dart';

class CustomTextFormFieldSignIn extends StatelessWidget {
   
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormFieldSignIn({Key? key, this.hintText, this.labelText, this.suffixIcon, this.obscureText=false, required this.formProperty, required this.formValues, this.keyboardType}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if(value!.length < 3){
          return "Minimo 3 caracteres";
        }
        if(formValues['contraseña']!.length < 8){
          return "Minimo 8 caracteres";
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