import 'dart:io';
Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    3000,
  ); //parametros: tipo endereçamento IP/ Porta
  print('Listening on localhost:${server.port}');

  await for (HttpRequest request in server) {
    print("envia msg para cliente");
    
    request.response
      //write(), writeln(), writeAll(), writeCharCodes()
      ..write('Recebe msg do Servidor')
      ..close();
  }
}