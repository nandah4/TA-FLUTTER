import 'package:flutter/material.dart';
import 'package:flutter_appnews_1/model/news.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.orange.shade800,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18.0),
        children: 
          [Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(widget.data.title!,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 8.0),
              Text(widget.data.author!,
              style: TextStyle(
                color: Colors.black,
              ),
              ),
              SizedBox(height: 20.0,),
              Hero(
                tag: "${widget.data.title}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child:Image.network(widget.data.urlToImage!),
                ),
              ),

              SizedBox(height: 30.0,),
              Text(widget.data.content!,
              style: TextStyle(
                color: Colors.black,
              ),
              ),
            ],
          ),
        ],
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
            // BottomNavigationBarItem(
            //   backgroundColor: Colors.transparent,
            //   icon: Icon(Icons.home),
            //   label: "Home",
            //   ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.article),
            //   label: "Artikel",
            //   ),

            //   BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: "Profil",
            //   ),

            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(Icons.home),
              ),
              label: "Beranda",
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
              label: "Artikel",
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
              label: "Profil",
              // backgroundColor: Colors.transparent,
              // icon: Icon(Icons.home),
              // label: "Home",
              ),
          ]
        ),
      ),
    );
  }
}