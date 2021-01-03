# sexy_api_client

A simple wrapper around Google's http module for easily making Query String API calls.

Note: This library makes an http Get request to the specified URL, concatenates the path to the URL if one is specified and URI encodes data and formats it following the [QueryString Specs](https://en.wikipedia.org/wiki/Query_string). Any thrown errors are from the http module it depends on.

# Import Packages

~~~dart
import 'package:sexy_api_client/sexy_api_client.dart';
~~~
# Example

~~~dart
//Define parameters
Map<String,String> parameters = {
	'format':'json',
};
//Make the API call to the specified URL using the Map parameters
String myResponse = await SexyAPI(url: 'https://api64.ipify.org',parameters: parameters).call();
//Print the server response
print(myResponse);
~~~

