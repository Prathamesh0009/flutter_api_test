import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://t6b6e5ir7a.execute-api.us-east-1.amazonaws.com/test";

// Future represents a value that will be available at some point in the future (asynchronous operation).
  static Future<Map<String, dynamic>> fetchProfile() async {  //Map is a collection of key-value pairs. Here, String represents the key type, and dynamic means the value can be of any type.
    print("API called");
    final uri = Uri.parse(baseUrl); //A URI distinguishes one resource from another. URIs enable internet protocols to facilitate interactions between and among these resources.
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final body = response.body;
      final decodedResponse = jsonDecode(body); //Parses the string and returns the resulting Json object.
      final profileData = jsonDecode(decodedResponse['body']); 
      print("API call completed: $profileData");
      return profileData; 
    } else {
      print("Failed to fetch profile: ${response.statusCode}");
      throw Exception("Failed to fetch profile");
    }
  }
}
