import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

Future initiate() async {
  var client = Client();
  Response response = await client.get('https://news.yahoo.com/world/');

  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('a.mega-item-header-link');

  List<Map<String, dynamic>> linkMap = [];

  for (var link in links) {
    linkMap.add({'title': link.text, 'link': link.attributes['href']});
  }

  return json.encode(linkMap);
}
