import'package:dicoding/codelab.dart';
import'package:dicoding/data.dart';
import'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Hero(
              tag: 'gambarUtama',
              child: Image.asset('asset/img/logo.png',width: 53,)
            ),
            SizedBox(width: 7),
            Text('Wisata Bandung',
            style: TextStyle(
              fontFamily: 'Staat', fontSize: 30
            ),
          ),
            ],
          ),
        )
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth <= 600){
            return ListBandung();
          } else if (constraints.maxWidth <= 1200){
            return GridBandung(gridCount: 2);
          } else{
            return GridBandung(gridCount: 4);
          }
        }
      )
    );
  }
}

class ListBandung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bandungList.length,
      itemBuilder: (context, int index){
      final Bandung wisata = bandungList[index];
        return InkWell(
          child: Card(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        wisata.image,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.airplane_ticket_outlined),
                          SizedBox(width: 10),
                          Text(wisata.nama, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.place_outlined),
                          SizedBox(width: 10),
                          Text(wisata.location, style: TextStyle(fontSize: 18),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => DetailScreen(
                wisata: bandungList[index]
              )
            ));
          },
        );
      }
    );
  }
}


class GridBandung extends StatelessWidget {
  final int gridCount;
  GridBandung({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: bandungList.map((wisata){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(wisata: wisata,);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          wisata.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.airplane_ticket_outlined),
                          SizedBox(width: 10),
                          Text(wisata.nama, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.place_outlined),
                          SizedBox(width: 10),
                          Text(wisata.location, style: TextStyle(fontSize: 18,),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5)
                ]
              ),
            ),
          ); 
        }).toList()
      )
    );
  }
}