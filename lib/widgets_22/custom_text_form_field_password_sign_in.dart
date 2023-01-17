
import 'package:flutter/material.dart';

class CustomTextFormFieldPasswordSignIn extends StatefulWidget {
  final Key fieldKey;
  final String? hintText;
  final String? labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;
  
  const CustomTextFormFieldPasswordSignIn({Key? key, this.hintText, this.labelText, required this.fieldKey, required this.onSaved, required this.validator, required this.onFieldSubmitted}) : super(key: key);

  @override
  State<CustomTextFormFieldPasswordSignIn> createState() => _CustomTextFormFieldPasswordSignInState();
}

class _CustomTextFormFieldPasswordSignInState extends State<CustomTextFormFieldPasswordSignIn> {
  bool _obscureText = true;

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
      },
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        labelText: 'Contraseña',
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