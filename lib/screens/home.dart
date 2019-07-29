import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  static final routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D0274),
        actions: <Widget>[
          Icon(Icons.favorite_border),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
          )
        ],
        leading: Icon(Icons.menu),
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF0D0274),
                Color(0xFF0D0272),
                Color(0xFF0D016B),
                Color(0xFF0D0265),
                Color(0xFF0E0466),
                Color(0xFF12085A),
              ])),
          child: Scrollbar(
            child: SingleChildScrollView(
              child: _buildHeader(context),
            ),
          )),
    );
  }
}

Widget _buildHeader(BuildContext context) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '1 August 2019',
            style: TextStyle(
                color: Color(0xFF9891CB),
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
          ),
          Text(
            'Favourite Dishes',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
          ),
          _buildCard(context),
          _buildCard(context),
          _buildPopular(context)
        ],
      ),
    );

Widget _buildCard(BuildContext context) => Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
                color: Colors.black12,
                offset: Offset(4, 3),
                blurRadius: 5.0,
                spreadRadius: 2.3)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0618B6),
                Color(0xFF0312A4),
                Color(0xFF000B84)
              ])),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),),
              height: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width / 4,
              child: Image.asset('assets/food.png')),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Kachi kocha Pitha',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                  ),
                  Text(
                    'Special Crunch flavours',
                    style: TextStyle(
                        color: Color(0xFF9891CB),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  Text(
                    'KES 750',
                    style: TextStyle(
                        color: Color(0xFFFE793E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      ),
    );

Widget _buildPopular(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Popular Dishes',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('View All',
              style: TextStyle(color: Color(0xFF9891CB), fontSize: 18))
        ],
      ),
      SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(12), child: _buildDish(context));
          },
        ),
      )
    ]));

Widget _buildDish(BuildContext context) => Container(
      child: SizedBox(
        width: 150,
        height: 250,
        child: Stack(
          alignment: const Alignment(2, -1),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 53),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF0518B9),
                      Color(0xFF0616A5),
                      Color(0xFF071598),
                      Color(0xFF010B85)
                    ]),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black12,
                      offset: Offset(4, 3),
                      blurRadius: 5.0,
                      spreadRadius: 2.3)
                ],
              ),
              width: 150,
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Italian Noodles',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  ),
                  _buildStars(context),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Text(
                    'KES 100',
                    style: TextStyle(
                        color: Color(0xFFFE793E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset('assets/spangetti.png'))
          ],
        ),
      ),
    );

Widget _buildStars(BuildContext context) => Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.star, color: Color(0xFFFFBF32)),
          Icon(Icons.star, color: Color(0xFFFFBF32)),
          Icon(Icons.star, color: Color(0xFFFFBF32)),
          Icon(Icons.star, color: Color(0xFFFFBF32)),
          Icon(Icons.star, color: Color(0xFFFFBF32)),
        ],
      ),
    );
