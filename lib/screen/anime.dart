import 'package:flutter/material.dart';

class Anime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimeBody(),
    );
  }
}

class AnimeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            animeList(),
            animeList(),
            animeList(),
            animeList(),
           
          ],
        ),
      ),
    );
  }

  Widget animeList() {
    return Container(
      color: Colors.red,

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 130,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('img/per.jpg'), fit: BoxFit.cover)),
              ),
            ),

            Container(
              width: 300,
              color: Colors.tealAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Persona 4 sdjasdjai sldjals sdhnaldha kjshbdkabgdhaksbdha", overflow: TextOverflow.ellipsis, maxLines: 2, style: TextStyle(fontSize: 20),),
                  Text("Persona 4", style: TextStyle(fontSize: 15),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
