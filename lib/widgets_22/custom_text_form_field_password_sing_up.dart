import 'package:flutter/material.dart';

class CustomTextFormFieldPasswordSignUp extends StatefulWidget {
  final Key fieldKey;
  final String? hintText;
  final String? labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;

  final String? formProperty;
  final Map<String, String>? formValues;
  
  const CustomTextFormFieldPasswordSignUp({Key? key, this.hintText, this.labelText, required this.fieldKey, required this.onSaved, required this.validator, required this.onFieldSubmitted, this.formProperty, this.formValues}) : super(key: key);

  @override
  State<CustomTextFormFieldPasswordSignUp> createState() => _CustomTextFormFieldPasswordSignUpState();
}

class _CustomTextFormFieldPasswordSignUpState extends State<CustomTextFormFieldPasswordSignUp> {
  bool _obscureText = true;
  

  String? getPassword(){
    String? pw;
    pw = widget.formValues!['contraseña'];
    return pw;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.key,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: (value) {
        if(value!.length < 8){
          return "Minimo 8 caracteres";
        }
        if(widget.formValues!['contraseña'] != widget.formValues!['confirmar']){
          return"Las contraseñas tienen que coincidir";
        }
      },
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        )
      ),
    );
  }
}