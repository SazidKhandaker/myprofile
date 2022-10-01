import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Container(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "My profile",
              style: Titlefont(34, Color(0xff263238)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 335,
              child: Stack(
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1661961111247-e218f67d1cd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: 150,
                      bottom: 0,
                      child: Container(
                        height: 135,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 4)),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              "https://scontent.fdac13-1.fna.fbcdn.net/v/t1.6435-9/86746721_1498235787018509_1135729862917488640_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=tm6f1w9GjhwAX8j-4WD&_nc_ht=scontent.fdac13-1.fna&oh=00_AT9hBjg0t8CP7_XgbBjzkCmd7vp5bjfBHzcot3jpvrtrTg&oe=635AC2E8"),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                  child: Text(
                "Sazid Khandaker",
                style: subTitlefont(25, Colors.black87),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Center(
              child: Text("Flutter Developer",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[700],
                  ))),
            )),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "About Me",
                style: subTitlefont2(20, Colors.black87, FontWeight.bold),
              ),
              subtitle: Text(
                "Hi i am Sazid Khandaker.I am 27 years old.I Live in Dhaka and I am a full-stack flutter and Web developer.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Education",
                style: subTitlefont2(20, Colors.black87, FontWeight.bold),
              ),
              subtitle: Text(
                "BSC in C.S.E from North South University.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Social-Media",
                style: subTitlefont2(20, Colors.black87, FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PictureOfrow(
                    "https://cdn-icons-png.flaticon.com/512/733/733609.png"),
                PictureOfrow(
                    "https://cdn-icons-png.flaticon.com/512/3536/3536569.png"),
                PictureOfrow(
                    "https://cdn-icons-png.flaticon.com/512/1384/1384005.png"),
                PictureOfrow(
                    "https://cdn-icons-png.flaticon.com/512/1384/1384007.png"),
              ],
            )
          ]),
        )),
      ),
    );
  }

//Functions for this Page
  Titlefont(double titlesize, Color clr) {
    return GoogleFonts.lobster(
        textStyle: TextStyle(fontSize: titlesize, color: clr));
  }

  subTitlefont(double titlesize, Color clr) {
    return GoogleFonts.anton(
        textStyle: TextStyle(fontSize: titlesize, color: clr));
  }

  subTitlefont2(double titlesize, Color clr, [FontWeight? fw]) {
    return GoogleFonts.signika(
        textStyle: TextStyle(
      fontSize: titlesize,
      color: clr,
      fontWeight: fw,
    ));
  }

  PictureOfrow(String chobi) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 65,
      width: 65,
      child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage("$chobi")),
    );
  }
}
