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
        child: Column(
          children: [
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.grey[400],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.link,
                      color: Colors.grey[400],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.image,
                      color: Colors.grey[400],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_library,
                      color: Colors.grey[400],
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('About me',
                            style:
                                GoogleFonts.titilliumWeb(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Contact',
                            style:
                                GoogleFonts.titilliumWeb(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Privacy & Policy',
                            style:
                                GoogleFonts.titilliumWeb(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Terms & Conditions',
                            style:
                                GoogleFonts.titilliumWeb(color: Colors.white)))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
