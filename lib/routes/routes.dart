import 'package:flutter/material.dart';
import 'package:flutter_appnews_1/screen/artikel.dart';
import '../screen/home.dart';
import 'package:flutter_appnews_1/screen/search.dart';
import 'package:flutter_appnews_1/screen/profil.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/search':
      return MaterialPageRoute(builder: (_) => SearchPage());
      case '/artikel':
      return MaterialPageRoute(builder: (_) => ArtikelScreen());
      case '/profil':
      return MaterialPageRoute(builder: (_) => ProfilPage());
      default:
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}