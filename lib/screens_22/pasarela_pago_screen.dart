
import 'package:examen_1evaluacion_22/app_theme_22/app_theme_22.dart';
import 'package:examen_1evaluacion_22/screens_22/listview_screen_22.dart';
import 'package:examen_1evaluacion_22/screens_22/reservas_screen_22.dart';
import 'package:flutter/material.dart';

class PagoScreen extends StatefulWidget {
  //String precio;

  const PagoScreen({Key? key, /*required this.precio*/}) : super(key: key);

  @override
  State<PagoScreen> createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> {
  
  bool _sliderEnabled =  false;
  final myFormKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          key: myFormKey,
           children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200]
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 35, right: 35, bottom: 35),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Precio(IVA incluido)'),
                        SizedBox(width: 76,),
                        Text('13,63€'/*widget.precio*/, style: TextStyle(fontSize: 30, color: AppTheme22.primary22),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                        Text('Creditos acumulados'),
                        SizedBox(width: 76,),
                        Text('13,36€', style: TextStyle(),),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: const [
                        Text('Politica de cancelación',),
                        Text(''),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Text('Este centro permite la cancelación hasta 24 horas antes.'),
                    const SizedBox(height: 8,),
                    Row(
                      children: const [
                        Text('*Hora local del club', style: TextStyle(color: Colors.red),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 18),
              child: ListTile(
                title: Text('Datos de pago', style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 36, right: 36),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          TextFormField(
                            textCapitalization: TextCapitalization.words,
                            validator: (value) {
                              if( value!.isEmpty){
                                return "Campo obligatorio";
                              }else if( value.length < 10 ){
                                return 'Tiene que introducir su nombre completo';
                              }
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              hintText: 'Nombre completo',
                              labelText: 'Nombre',
                              floatingLabelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if( value!.isEmpty){
                                return "Campo obligatorio";
                              }else if( value.length < 19 ){
                                return 'Numero de tarjeta invalido';
                              }
                            },
                            onChanged: (value) => {
                              if(value.length == 4 || value.length == 9 || value.length == 14){
                                value = "$value "
                              }
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              hintText: '1234 1234 1234 1234',
                              labelText: 'Tarjeta',
                              suffixIcon: Icon(Icons.credit_card),
                              floatingLabelStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0))
                              ),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                     if( value!.isEmpty){
                                       return "Campo obligatorio";
                                     }
                                  },
                                  onChanged: (value) => {
                                    if(value.length == 1){
                                      value = "$value/"
                                    },
                                    if(value != 1){
                                      value = "$value/"
                                    }
                                  },
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                    hintText: 'MM/AA',
                                    labelText: 'Fecha de caducidad',
                                    floatingLabelStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 17,),
                              SizedBox(
                                width: 70,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if( value!.isEmpty){
                                      return "Campo obligatorio";
                                    }else if( value.length != 3 ){
                                      return 'CVV incorrecto';
                                    }
                                  },
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                    hintText: 'CVC',
                                    labelText: 'CVV',
                                    floatingLabelStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(0))
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25,),
                          SwitchListTile.adaptive(
                            activeColor: AppTheme22.primary22,
                            title: const Text('Guardar metodo de pago'),
                            value: _sliderEnabled, 
                            onChanged: (value) {
                              _sliderEnabled = value;
                              setState(() {
                                
                              });
                              
                            }
                          ),
                          const SizedBox(height: 25,),
                          ElevatedButton(
                            onPressed: (() {
                              final route = MaterialPageRoute(builder: (context) => const ListviewScreen22());
                              Navigator.push(context, route);
                                if( !myFormKey.currentState!.validate() ){
                                print('Formulario no valido');
                                return;
                              }
                            }), 
                            child: const Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 15, left: 45, right: 45),
                              child: Text('Continuar con el pago', style: TextStyle(fontSize: 16),),
                            )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                onPressed: (() {
                  final route = MaterialPageRoute(builder: (context) => const ReservasScreen22());
                  Navigator.pop(context, route);
                }), 
                child: Text(
                  'Volver a la selección de pagos', 
                  style: TextStyle(
                    color: Colors.grey[800], 
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),
           ],
        ),
      ),
    );
  }
}