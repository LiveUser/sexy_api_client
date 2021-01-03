import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:sexy_api_client/sexy_api_client.dart';

void main() {
  test('Request my IP for testing', () async{
    Map<String,String> parameters = {
      'format':'json',
    };
    Response myResponse = await SexyAPI(url: 'https://api64.ipify.org',parameters: parameters).call();
    print(myResponse.body);
  });
}