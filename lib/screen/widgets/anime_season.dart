import 'package:flutter/material.dart';

class AnimeSeason extends StatelessWidget {

  AnimeSeason({ @required this.title, @required this.path});

  String title;
  var path;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent
      ),
      child: InkWell(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imageCover(context),
            SizedBox(height: 5,),
            _title(),
            SizedBox(height: 3,),
            Text("Ongoing")
          ],
        ),
      ),
    );
  }


Widget _imageCover(context) {
  return Container(
    height: 175,
    decoration: BoxDecoration(
      
      image: DecorationImage(
        image: AssetImage(this.path),
        fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(8)
    ),
  );
}



Widget _title() {
  return Text(
    this.title,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
      
    ),

  );
}



}



