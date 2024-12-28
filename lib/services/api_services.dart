
import 'dart:convert';
import 'package:http/http.dart' as http;


class NewsService{
 Future<List<dynamic>> fetchNews(String category) async{
   final response=await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2024-11-28&sortBy=publishedAt&apiKey=9e39fda7db9e4980bf2221a052e340ff"),
   );
   if (response.statusCode==200){
     final data=json.decode(response.body);
     print(response.body);
     return data['articles'];
   }
   else{
     throw Exception('Failed to load news');
   }
 }
}