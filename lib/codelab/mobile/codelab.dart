import 'package:flutter/material.dart';
import 'data.dart';

class MyHomePage extends StatelessWidget {

  final Bandung wisata;
  MyHomePage({required this.wisata});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                    child: Hero(
                      tag: 'gambarUtama',
                      child: Image.network(
                        wisata.image,
                        width: MediaQuery.of(context).size.width
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Opacity(
                          opacity: 0.6,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){
                                Navigator.pop(context);
                              }, 
                              icon: Icon(Icons.arrow_back_ios_outlined),
                            )
                          ),
                        ),
                      ),
                      FavButton()
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(wisata.nama,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Staat',
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8),
                        Text(wisata.openDays)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time_outlined),
                        SizedBox(height: 8),
                        Text(wisata.openTime)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on_outlined),
                        SizedBox(height: 8),
                        Text(wisata.ticketPrice)
                      ]
                    )
                  ],
                ),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                  child: Text(wisata.description,
                    textAlign: TextAlign.justify,
                    
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          wisata.image1,
                        ),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          wisata.image2,
                        ),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          wisata.image3,
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class FavButton extends StatefulWidget {

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  int x = 0;
  Icon favIcon = Icon(Icons.favorite_border_outlined, size: 26,);
  Color favColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Opacity(
        opacity: 0.6,
        child: CircleAvatar(
          backgroundColor: Colors.black,
          child: IconButton(
            icon: favIcon,
            color: favColor,
            onPressed: (){
              if(x == 0){
                setState(() {
                  favIcon = Icon(Icons.favorite);
                  favColor = Colors.redAccent.shade700;
                  x = 1;
                });
              }
              else{
                setState(() {
                  favIcon = Icon(Icons.favorite_border_outlined);
                  favColor = Colors.white;
                  x = 0;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}