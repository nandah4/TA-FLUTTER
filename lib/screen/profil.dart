import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color.fromARGB(255, 105, 105, 105),
        title: Text('Profil Page',),
      ),
      body: Center(
        child: Text(
          'Anda Belum Terdaftar',
        )
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.all(22),
        // decoration: BoxDecoration(
        //   color: Color.fromARGB(255, 167, 22, 22),
        // ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.orange.shade700,
          
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(Icons.home),
              ),
              label: "Beranda"
              // backgroundColor: Colors.transparent,
              // icon: Icon(Icons.home),
              // label: "Home",
              ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/artikel');
                },
                icon: const Icon(Icons.article),
              ),
              label: "Artikel"
              // backgroundColor: Colors.transparent,
              // icon: Icon(Icons.home),
              // label: "Home",
              ),

              BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(Icons.person),
              ),
              label: "Profil"
              // backgroundColor: Colors.transparent,
              // icon: Icon(Icons.home),
              // label: "Home",
              ),

              
          ]),
      ),
    );
  }
}
