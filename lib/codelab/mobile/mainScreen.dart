import'package:dicoding/codelab/mobile/codelab.dart';
import'package:dicoding/codelab/mobile/data.dart';
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
            Text('Wisata Bandung. Size: ${MediaQuery.of(context).size.width}',
            style: TextStyle(
              fontFamily: 'Staat', fontSize: 30
            ),
          ),
            ],
          ),
        )
      ),
      body: ListView.builder(
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
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
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
                            Text(wisata.nama, style: TextStyle(fontSize: 18),),
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
                builder: (_) => MyHomePage(
                  wisata: bandungList[index]
                )
              ));
            },
          );
        }
      ),
    );
  }
}