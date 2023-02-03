void main() {
  final nombre = 'Angel';
  
  saludar(nombre, 'hola');
  //saludar2(nombre: nombre, mensaje: 'dawdaw');
}

void saludar(String nombre, [String mensaje = 'Hi']){
  print('$mensaje $nombre');
}

void saludar2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
