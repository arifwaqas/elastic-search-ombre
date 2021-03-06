import 'package:flutter/material.dart';

Widget customListTile({String name, String genre, onTap, int queryLength}) {
  return Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/e/ed/Green_Day_-_American_Idiot_album_cover.png')),
            )),
        SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                genre,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pink, fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: name.substring(0, queryLength),
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: name.substring(queryLength),
                        style: TextStyle(
                          color: Colors.grey[600],
                        ))
                  ]),
            ),
          ],
        )
      ],
    ),
  );
}
