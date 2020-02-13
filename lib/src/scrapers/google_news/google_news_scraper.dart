import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

Future initiate() async {
  var client = Client();
  Response response = await client.get(
      'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRFZxYUdjU0FtVnVHZ0pMUlNnQVAB?hl=en-KE&gl=KE&ceid=KE%3Aen');

  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('a.DY5T1d');

  List<Map<String, dynamic>> linkMap = [];

  for (var link in links) {
    linkMap.add({
      'title': link.text,
      'link': link.attributes['href'],
    });
  }

  return json.encode(linkMap);
}
