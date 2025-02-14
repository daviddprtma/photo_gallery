import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  // make a dynamic year
  final String year = DateTime.now().year.toString();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Center(
        child: Column(children: [
          Text(
            '@ $year All Rights Reserved',
            style: GoogleFonts.titilliumWeb(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  "https://www.instagram.com/daviddprtma/";
                },
                icon: Icon(
                  Icons.image,
                  color: Colors.grey[400],
                ),
                tooltip: "Instagram",
              ),
              IconButton(
                onPressed: () {
                  "https://www.threads.net/@daviddprtma?xmt=AQGzSnLf8sMsuZKFwwQ7cpEiB5F6YERP85PmrGB1jCISV7Y";
                },
                icon: Icon(
                  Icons.link,
                  color: Colors.grey[400],
                ),
                tooltip: "Threads",
              ),
              IconButton(
                onPressed: () {
                  "https://www.youtube.com/@daviddprtma";
                },
                icon: Icon(
                  Icons.video_collection,
                  color: Colors.grey[400],
                ),
                tooltip: "Youtube",
              ),
              IconButton(
                onPressed: () {
                  "https://www.tiktok.com/@daviddprtma2812";
                },
                icon: Icon(
                  Icons.tiktok,
                  color: Colors.grey[400],
                ),
                tooltip: "Tiktok",
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}
