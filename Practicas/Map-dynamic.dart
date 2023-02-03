void main() {
  Map<String, dynamic> persona = {
    'nombre': 'Angel',
    'edad': 21,
    'soltero': false,
  };
  persona.addAll({'segundoNombre': 'Juan'});
  
  print(persona);
}
