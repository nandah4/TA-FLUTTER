import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnews_1/components/news_list_tile.dart';
import 'package:flutter_appnews_1/model/news.dart';
import 'package:flutter_appnews_1/components/breakingnews_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Rekishi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
             icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Artikel Terbaru',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20.0,),

                CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length, 
                  itemBuilder: (context, index, id) => 
                    BreakingNewsCard(NewsData.breakingNewsData[index]), 
                    options: CarouselOptions(
                      aspectRatio: 16/9, enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      ),
                    ),

                    SizedBox(height: 40.0,),
                    Text("Semua Artikel",
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    
                    SizedBox(height: 16.0,),
                    Column(
                      children: NewsData.recentNewsData
                      .map((e) =>  NewsListTile(e))
                      .toList(),
                ),
            ],
          ),
        ),
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

              
          ]),
      ),
    );
    
  }
}