library sexy_api_client;
import 'package:http/http.dart';
import 'package:meta/meta.dart';

///A class that contains the library's methods
class SexyAPI {
  ///Full url minus the path
  String url;
  ///URL path for the API
  String path;
  ///Query String parameters
  Map <String,dynamic> parameters;
  SexyAPI({@required this.url,this.path,@required this.parameters}){
    this.url = this.url ?? '';
    this.path = this.path ?? '';
    this.parameters = this.parameters ?? {};
  }
  Future<String> call()async{
    //Format parameters into encoded uri QueryString
    List<String> keyValuePairs = [];
    this.parameters.keys.forEach((key) {
      //Only encode parameters if they are strings
      keyValuePairs.add('${Uri.encodeComponent(key)}=${parameters[key] is String ? Uri.encodeComponent(parameters[key]) : parameters[key]}');
    });
    String queryString = keyValuePairs.join('&');
    String fullURL = '$url$path?$queryString';
    Response response = await get(fullURL);
    return response.body;
  }
}
