# sexy_api_client

A simple wrapper around Google's http module for easily making Query String API calls.

Hecho en 🇵🇷 por Radamés J. Valentín Reyes

Note: This library makes an http Get request to the specified URL, concatenates the path to the URL if one is specified and URI encodes data and formats it following the [QueryString Specs](https://en.wikipedia.org/wiki/Query_string). Any thrown errors are from the http module it depends on.

# Import Packages

~~~dart
import 'package:sexy_api_client/sexy_api_client.dart';
~~~
# Example

## Get request
~~~dart
//Define parameters
Map<String,String> parameters = {
  'format':'json',
};
//Make the API call to the specified URL using the Map parameters
String myResponse = await SexyAPI(url: 'https://api64.ipify.org',parameters: parameters).get();
//Print the server response
print(myResponse);
~~~

## Post request
~~~dart
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
~~~

## Patch, Put and Delete
Use this request exactly like in the other examples. It's all the same.

------------------------------------------------------------
## Contribute/donate by tapping on the Pay Pal logo/image

<a href="https://www.paypal.com/paypalme/onlinespawn"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_74x46.jpg"/></a>

------------------------------------------------------------