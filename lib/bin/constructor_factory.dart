main(List<String> arg) {
  var datos = {'nombre': 'Avidan', 'apellido': 'Garcia Castillo'};

  final persona = new Persona.asignarDatos(datos);
  //print('${persona.nombre} ${persona.apellido}');
  print(persona.nombreCompleto());
}

class Persona {
  String nombre;
  String apellido;

  Persona({ this.nombre,  this.apellido});

  factory Persona.asignarDatos(Map jsonMap) {
    return Persona(
      nombre: jsonMap['nombre'], 
      apellido: jsonMap['apellido']
      );
  }

  //method toString
  String nombreCompleto() => "$nombre $apellido";
}
