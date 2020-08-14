import 'package:flutter/material.dart';

class EpisodeRelesed extends StatefulWidget {
  @override
  _EpisodeRelesedState createState() => _EpisodeRelesedState();
}

class _EpisodeRelesedState extends State<EpisodeRelesed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            _imageThumb(),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Persona 4 Episode 12 ajbjsdfa adfnauhgd afhandiashd jafhja',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Episode 12',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Posted by: ',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Released on : 2 hari yg lalu ',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageThumb() {
    return Container(
      width: 154,
      height: 104,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "img/per.jpg",
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5)),
    );
  }




}
