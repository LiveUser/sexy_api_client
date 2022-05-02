import 'package:sexy_api_client/sexy_api_client.dart';
import 'package:test/test.dart';

void main() {
  test('Request my IP for testing', () async{
    Map<String,String> parameters = {
      'format':'json',
    };
    String myResponse = await SexyAPI(url: 'https://api64.ipify.org',parameters: parameters).get();
    print(myResponse);
  });
  test("Post request", ()async{
    Map<String,String> parameters = {
      'format':'json',
    };
    Map<String,String> contentToPost = {
      "key" : "value",
    };
    String myResponse = await SexyAPI(
      url: 'https://api64.ipify.org',
      parameters: parameters,
    ).post(
      body: contentToPost,
    );
    print(myResponse);
  });
}