import 'package:dio/dio.dart';

//cria oque a classe deve ter, mas não passa a lógica
abstract interface class IHttpClient {
  //separa oque sistema precisa, de qual biblioteca faz
  Future get({required url, Map<String, dynamic>? headers});

  //Busca dados
  Future post({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  });

  //atualização completa
  Future put({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  });

  //atualização parcial
  Future patch({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  });

  //remove dados
  Future delete({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  });
}

//aqui implementa interface, escreve a lógica real
class DioClient implements IHttpClient {
  //recebe instância do Dio
  final Dio client;

  DioClient(this.client);

  @override
  Future get({required url, Map<String, dynamic>? headers}) async {
    return await client.get(url, options: Options(headers: headers));
  }

  @override
  Future post({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    return await client.post(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }

  @override
  Future delete({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    return await client.delete(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }

  @override
  Future patch({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    return await client.patch(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }

  @override
  Future put({
    required url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    return await client.put(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }
}
