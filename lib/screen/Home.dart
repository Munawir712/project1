import 'package:flutter/material.dart';
import 'package:project1/costom/HexColor.dart';
import 'package:project1/screen/widgets/anime_season.dart';
import 'package:project1/screen/widgets/episode_relesed.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color colorCard = HexColor("#384457");

  final List<Map> _animeSeason = [
    {'title':'Persona 4', 'path' : 'img/per.jpg'},
    {'title':'Persona 5', 'path' : 'img/p5.png'},
    {'title':'Persona 5 Movie','path' : 'img/p51.jpg'},
    {'title':'Persona 4','path' : 'img/per.jpg'},
    {'title':'Persona 5','path' : 'img/p5.png'},
    
   
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: HexColor("#1b2536"),
      body: ListView(
        children: <Widget>[
          Card(
              color: colorCard,
              child: Container(
                height: 170,
                width: double.infinity,
                child: Center(child: Text('Carousel Image'),)
              )
          ),
          
          Card(
            color: colorCard,
            child: Container(
              height: 310,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Title
                  buildTitleContent("Anime Summer"),
                  SizedBox(height: 10,),
                  // ListView
                  Container(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _animeSeason.length,
                      itemBuilder: (context, index){
                        final x = _animeSeason[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: AnimeSeason(title: x['title'], path: x['path']),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Card(
            color: colorCard,
            child: Container(
              width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    buildTitleContent("Episode Terbaru"),
                    SizedBox(height: 10),
                    ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: [
                        EpisodeRelesed(),
                        EpisodeRelesed(),
                        EpisodeRelesed(),
                        EpisodeRelesed(),
                      ],
                    )
                  ],
                )
              ),
          ),

          
        ],
      ),
    );
  }

  

  

  Container buildTitleContent(String _title) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: Colors.white12))
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.live_tv,
            size: 25.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            _title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

