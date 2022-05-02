library sexy_api_client;
import 'package:http/http.dart' as http;
//TODO: Add support for different types of requests like post
///A class that contains the library's methods
class SexyAPI {
  ///Full url minus the path
  String url;
  ///URL path for the API
  String path;
  ///Query String parameters
  Map <String,dynamic> parameters;
  SexyAPI({
    required this.url,
    this.path = "",
    required this.parameters,
  });
  Uri _toURI(){
    //Format parameters into encoded uri QueryString
    List<String> keyValuePairs = [];
    this.parameters.keys.forEach((key) {
      //Only encode parameters if they are strings
      keyValuePairs.add('${Uri.encodeComponent(key)}=${parameters[key] is String ? Uri.encodeComponent(parameters[key]) : parameters[key]}');
    });
    String queryString = keyValuePairs.join('&');
    String fullURL = '$url$path?$queryString';
    return Uri.parse(fullURL);
  }
  Future<String> get({
    Map<String, String>? headers,
  })async{
    http.Response response = await http.get(_toURI(),
      headers: headers,
    );
    return response.body;
  }
  Future<String> post({
    required Object? body,
    Map<String, String>? headers,
  })async{
    http.Response response = await http.post(_toURI(),
      headers: headers,
      body: body,
    );
    return response.body;
  }
  Future<String> patch({
    required Object? body,
    Map<String, String>? headers,
  })async{
    http.Response response = await http.patch(_toURI(),
      headers: headers,
      body: body,
    );
    return response.body;
  }
  Future<String> put({
    required Object? body,
    Map<String, String>? headers,
  })async{
    http.Response response = await http.put(_toURI(),
      headers: headers,
      body: body,
    );
    return response.body;
  }
  Future<String> delete({
    required Object? body,
    Map<String, String>? headers,
  })async{
    http.Response response = await http.delete(_toURI(),
      headers: headers,
      body: body,
    );
    return response.body;
  }
}
