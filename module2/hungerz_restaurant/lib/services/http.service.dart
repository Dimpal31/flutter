import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Config/config.dart';
class httpService{

  String base_url= config().baseUrl;
  getAccessToken()async{
    var header={
      "Content-Type":"application/json",
      "Authorization":"Basic "+base64.encode(utf8.encode(config().clientId+":"+config().clinetSecret))
    };
    http.Response response = sendApiRequest(url: 'api/rest/oauth2/token/client_credentials', headers: header, body: {}, method: "post");
    // Notice how you have to call body from the response if you are using http to retrieve json
    final body = json.decode(response.body);

    // This is how you get success value out of the actual json
    if (body['success']) {
      //Token is nested inside data field so it goes one deeper.
      final String token = body['data']['access_token'];

      return token;
    }else{
      return null;
    }
  }
  sendApiRequest({required String url,required dynamic headers,required dynamic body,required String method})async {
    final uri = Uri.parse(base_url + url);

    http.Response? response;

    switch (method) {
      case "get":
        response = await http.get(uri,headers: headers);
        print("Response of Api ${response.body}");
        break;
      case "post":
        response = await http.post(uri, headers: headers, body: body);
        print("Response of Api ${response.body}");
        break;
      case "put":
        response = await http.put(uri, headers: headers, body: body);
        print("Response of Api ${response.body}");
        break;
      case "delete":
        response = await http.delete(uri, headers: headers, body: body);
        print("Response of Api ${response.body}");
        break;
    }
    if(response!.statusCode==200){
      return response;
    }else if(response.statusCode==401) {
      String acessToken = getAccessToken();
      var newHeader = json.decode(headers);
      newHeader["Authorization"] = "Bearer "+acessToken;
      return sendApiRequest(url: url, headers: newHeader, body: body, method: method);
    }else
    {
      return null;
    }
  }
}