import 'dart:io';

//    Para rodar o servidor acesse o diretório raiz do arquivo 
//  pelo terminal e execute o comando: dart server.dart

Future main() async {
  List<int> listRequest;
  //parametros do bind: tipo endereçamento IP, Porta
  var server = await HttpServer.bind( InternetAddress.loopbackIPv4, 3000, ); 
  print('Listening on ${server.address}:${server.port}');

  //await for (HttpRequest request in server) {
  //  print("envia msg para cliente");
    
    /* request.response
      //write(), writeln(), writeAll(), writeCharCodes()
      ..write('Recebe msg do Servidor')
      ..close();
    }
  */
  server.listen((HttpRequest request) {
    print("Envia msg para cliente");
    request.response.write('Recebe msg do Servidor');
    request.response.close();
  });
}