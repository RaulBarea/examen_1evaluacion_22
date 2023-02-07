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

    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: Colors.black54,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, MaterialPageRoute(builder: (context) => const HomeScreen22())),
            );
          }
        )
      ),
      body: Container(
        color: Colors.white,
        height: 670,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 210, top: 7),
                  child: Text('Identifícate', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
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
                  }, 
                  onSaved: (String? newValue) {
                    
                  }, 
                ),
                const SizedBox(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 28, 57, 80),
                    elevation: 0,
                  ),
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
                    padding: EdgeInsets.only(bottom: 6, top: 6),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text('Iniciar sesión', style: TextStyle(fontSize: 17, color: Colors.white),),
                        ),)
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}