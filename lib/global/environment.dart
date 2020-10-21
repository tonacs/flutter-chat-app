import 'dart:io';

class Environment {
  //Servicios REST
  static String apiUrl = Platform.isAndroid
      ? 'http://192.168.0.14:3000/api'
      : 'http://localhost:3000/api';
  //Servidor de sockets
  //Referencia al servidor
  static String socketUrl =
      Platform.isAndroid ? 'http://192.168.0.14:3000' : 'http://localhost:3000';
}
