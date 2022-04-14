import 'package:flutter/material.dart';
import 'data.dart';

class DetailScreen extends StatelessWidget {

  final Bandung wisata;
  DetailScreen({required this.wisata});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if (constraints.maxWidth > 800){
          return DetailScreenWeb(wisata: wisata,);
        } else{
          return DetailScreenMobile(wisata: wisata,);
        }
      }
    );
  }
}


class DetailScreenMobile extends StatelessWidget {

  final Bandung wisata;
  DetailScreenMobile({required this.wisata});

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


class DetailScreenWeb extends StatefulWidget {

  final Bandung wisata;
  DetailScreenWeb({required this.wisata});

  @override
  State<DetailScreenWeb> createState() => _DetailScreenWebState();
}

class _DetailScreenWebState extends State<DetailScreenWeb> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 64,
          ),
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('WISATA BANDUNG',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Staat',
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Hero(
                                tag: 'gambarUtama',
                                child: Image.network(
                                  widget.wisata.image, 
                                ),
                              ),
                            ),
                            Scrollbar(
                              isAlwaysShown: false,
                              thickness: 4,
                              controller: scrollController,
                              child: Container(
                                height: 150,
                                padding: EdgeInsets.only(top: 5, bottom: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: ListView(
                                    controller: scrollController,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            widget.wisata.image1,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            widget.wisata.image2,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            widget.wisata.image3,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ), 
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 3,
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(widget.wisata.nama,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Staat',
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today),
                                        SizedBox(width: 8),
                                        Text(widget.wisata.openDays)
                                      ],
                                    ),
                                    FavButton()
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.access_time_outlined),
                                      SizedBox(width: 8),
                                      Text(widget.wisata.openTime)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.monetization_on_outlined),
                                      SizedBox(width: 8),
                                      Text(widget.wisata.ticketPrice)
                                    ]
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Text(widget.wisata.description,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                      )
                    ],
                  ),
                ]  
              ),
            ),
          ),
        ),
      ),
    );
  }

  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

class DetailWebPage extends StatefulWidget {
  final Bandung wisata;
  const DetailWebPage({Key? key, required this.wisata}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.network(widget.wisata.image),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              // child: ListView(
                              //   controller: _scrollController,
                              //   scrollDirection: Axis.horizontal,
                              //   children: widget.place.imageUrls.map((url) {
                              //     return Padding(
                              //       padding: const EdgeInsets.all(4.0),
                              //       child: ClipRRect(
                              //         borderRadius: BorderRadius.circular(10),
                              //         child: Image.network(url),
                              //       ),
                              //     );
                              //   }).toList(),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.wisata.nama,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.calendar_today),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.wisata.openDays,
                                        // style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  FavButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.access_time),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.wisata.openTime,
                                    // style: informationTextStyle,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.wisata.ticketPrice,
                                    // style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.wisata.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
    return IconButton(
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
    );
  }
}