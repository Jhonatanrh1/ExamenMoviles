import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  final _formState = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: guardarDatos,
      ),
      body: FormBuilder(
        key: _formState,
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FormBuilderTextField(
                  name: "nombre",
                  decoration: InputDecoration(
                      labelText: 'Nombre',
                      hintText: "Ingrese su Nombre",
                      prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                      suffixIcon: Icon(Icons.cancel),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color: Colors.teal))),
                  //validator: FormBuilderValidators.required(context,errorText: ""),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FormBuilderTextField(
                  name: "apellido",
                  decoration: InputDecoration(
                      labelText: 'Apellido',
                      hintText: "Ingrese su Apellido",
                      prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                      suffixIcon: Icon(Icons.cancel),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color: Colors.teal))),
                  //validator: FormBuilderValidators.required(context,errorText: ""),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FormBuilderTextField(
                  name: "edad",
                  decoration: InputDecoration(
                      labelText: 'Edad',
                      hintText: "Ingrese su Edad",
                      prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                      suffixIcon: Icon(Icons.cancel),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color: Colors.teal))),
                  //validator: FormBuilderValidators.required(context,errorText: ""),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: FormBuilderTextField(
                  name: "estado",
                  decoration: InputDecoration(
                      labelText: 'Estado',
                      hintText: "Ingrese su Esatdo Civil",
                      prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                      suffixIcon: Icon(Icons.cancel),
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color: Colors.teal))),
                  //validator: FormBuilderValidators.required(context,errorText: ""),
                ))
          ],
        ),
      ),
    );
  }

  guardarDatos() async {
    bool validacion = _formState.currentState!.saveAndValidate();
    if (validacion) {
      print("Guardar");
      final valores = _formState.currentState!.value;
      final nombre = valores['nombre'];
      final apellido = valores['apellido'];
      final edad = valores['edad'];
      final estado = valores['estado'];

      print(nombre);
      print(apellido);
      print(edad);
      print(estado);
    }
  }
}
