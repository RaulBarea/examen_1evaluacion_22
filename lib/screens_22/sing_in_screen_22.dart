import 'package:examen_1evaluacion_22/screens_22/screens_22.dart';
import 'package:examen_1evaluacion_22/widgets_22/widgets.dart';
import 'package:flutter/material.dart';

class SingInScreen22 extends StatefulWidget {
   
   const SingInScreen22({Key? key}) : super(key: key);

  @override
  State<SingInScreen22> createState() => _SingInScreen22State();
}

class _SingInScreen22State extends State<SingInScreen22> {
   @override
   Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'usuario': 'rbarea',
      'contraseña':'123456',
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
              CustomTextFormFieldPasswordSignIn(
                fieldKey: GlobalKey<FormFieldState<String>>(), 
                onFieldSubmitted: (String value) { 
                  setState(() {
                    formValues['contraseña'] = value;
                  });
                },
                validator: (String? value) { 
                  if(value!.length < 8){
                    return "Minimo 8 caracteres";
                  }
                  if(value != const CustomTextFormFieldPassword().getPassword()){
                    return "La contraseña no es correcta";
                  }
                }, 
                onSaved: (String? newValue) {
                  
                }, 
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
                  
                  final route = MaterialPageRoute(builder: (context) => const ListviewScreen22());
                  Navigator.pushReplacement(context, route);
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Sign in',style: TextStyle(fontSize: 15),))
                  ),
                )
              ),
            ],
          ),
        ),
      ),
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