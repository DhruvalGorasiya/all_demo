import 'dart:convert';
import 'package:cryptocurrency/MyHomePage.dart';
import 'package:http/http.dart' as http;

var rate;
Future fetchCrypto() async {
  final responce = await http.get(
    Uri.parse(
        'https://api.nomics.com/v1/currencies/ticker?key=c43b8a41f93d451d03242519c43d64b96980f515&ids=BTC,ETH,XRP,USDT,BCH&interval=NULL&convert=$dropval'),
  );
  if (responce.statusCode == 200) {
    String data = responce.body.toString();
    rate = jsonDecode(data);
    return rate;
  } else {
    throw Exception(responce.statusCode);
  }
}

String dropval = currencies[14];
var currencies = [
  'ZAR',
  'XPF',
  'XOF',
  'XCD',
  'XAF',
  'USD',
  'TRY',
  'SHP',
  'SGD',
  'RUB',
  'NZD',
  'MRU',
  'MAD',
  'JOD',
  'INR',
  'ILS',
  'HKD',
  'GGP',
  'GBP',
  'EUR',
  'DKK',
  'CHF',
  'BND',
  'AUD',
  'ANG',
  'AMD'
];
recall() {
  MyHomePage;
}
