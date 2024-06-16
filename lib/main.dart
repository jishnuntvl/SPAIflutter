import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPAI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Column(
            children: [
              SizedBox(width: 100,),
              Text('SPAI', style: TextStyle(color: Colors.white)),
            ],
          ),
          backgroundColor: Color.fromRGBO(55, 142, 181, 0.9),
          elevation: 0, 
          actions: [
            SizedBox(width: 20,),
            TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5), // Optional: for rounded corners
                color: Color.fromRGBO(255, 255, 255, 0.2), // Change the color of the indicator
              ),
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About'),
                Tab(text: 'Members'),
                Tab(text: 'Publications'),
                Tab(text: 'News'),
                Tab(text: 'Academics'),
                Tab(text: 'Gallery'),
                Tab(text: 'Search'),
              ],
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0, // Increase the font size
                fontWeight: FontWeight.normal,
                fontFamily: 'Century Gothic', // Set font family
                letterSpacing: 1.2, // Increase letter spacing for more emphasis
              ),
              unselectedLabelColor: Colors.white,
            ),
            SizedBox(width: 50,),
          ],
          
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          AboutPage(),
          MembersPage(),
          PublicationsPage(),
          NewsPage(),
          AcademicsPage(),
          GalleryPage(),
          SearchPage(),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ Image(
                  image: AssetImage('images/football.jpg'),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Center(child: Column(
                  children: [
                    SizedBox(height: 150,),
                    Text(
                      "WELCOME TO SPAI",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      " SPAI IS AN ORGANIZATION DEVOTING TO PROMOTING RESEARCH,PRACTICE AND DEVELOPMENT IN THE DISCIPLINE OF SPORT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      "PSYCHOLOGY THROUGH OUT THE WORLD.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_down),
                    color: Colors.white,
                    iconSize: 80,)
                  ],
                ))
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Home Page')),
            ),
          ],
        ),
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('About Page')),
    );
  }
}

class MembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Members Page')),
    );
  }
}

class PublicationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Publications Page')),
    );
  }
}

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('News Page')),
    );
  }
}

class AcademicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Academics Page')),
    );
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Gallery Page')),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Search Page')),
    );
  }
}
