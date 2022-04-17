import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rafff_project/model/tourism_place.dart';

class ApiService {
  static final String _url = 'https://625a05cb43fda1299a14aa37.mockapi.io/api/v1';

  static Future<List<Place>> getWisata() async{
    List<Place> listWisata = [];
    final response = await http.get(Uri.parse('$_url/tourism-places'));

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      TourismPlace respWisata = TourismPlace.fromJson(json);

      respWisata.data.forEach((item) {
        listWisata.add(item);
      });

      return listWisata;
    }else{
      return[];
    }
  }
}