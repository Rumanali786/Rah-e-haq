import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

class LeftIconContainer extends StatelessWidget {
  final String text;
  final Function press;
  final AssetImage Img;
  final Color color;
  final double Width;
  LeftIconContainer({@required this.text,this.press,this.Img,this.color,@required this.Width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1, //                   <--- border width here
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  margin: EdgeInsets.all(8),
                  width: Width,
                  child: Center(
                      child: Text(text,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image(image: Img),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class RightIconContainer extends StatelessWidget {
  final String text;
  final Function press;
  final AssetImage Img;
  final Color color;
  final double Width;
  RightIconContainer({@required this.text,this.press,this.Img,this.color,@required this.Width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Expanded(
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1, //                   <--- border width here
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(8),
                  width: Width,
                  child: Center(
                      child: Text(
                        text,
                        style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 2),
              child: CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image(
                      image: Img),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class HomeRightIconContainer extends StatelessWidget {
  final String text;
  final String quatestext;
  final String headertext;
  final Function press;
  final AssetImage Img;
  final Color color;
  final double Width;
  final double Height;
  HomeRightIconContainer({this.headertext,this.quatestext,this.Height,@required this.text,this.press,this.Img,this.color,@required this.Width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Image(
                            image: Img),
                        Text(quatestext)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    elevation: 4,
                    child: Container(
                      margin: EdgeInsets.all(14),
                      padding: EdgeInsets.all(8),
                      width: Width,
                      child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(headertext,style: TextStyle(fontFamily: "jameel",fontSize: 22,fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                text,
                                style: TextStyle(fontFamily: "jameel",fontSize: 16,fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
class HomeLeftIconContainer extends StatelessWidget {
  final String text;
  final String quatestext;
  final String headertext;
  final Function press;
  final AssetImage Img;
  final Color color;
  final double Width;
  final double Height;
  HomeLeftIconContainer({this.headertext,this.quatestext,this.Height,@required this.text,this.press,this.Img,this.color,@required this.Width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    elevation: 4,
                    child: Container(
                        margin: EdgeInsets.all(14),
                        padding: EdgeInsets.all(8),
                        width: Width,
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(headertext,style: TextStyle(fontFamily: "jameel",fontSize: 25,fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    text,
                                    style: TextStyle(fontFamily: "jameel",fontSize: 15,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ))),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: CircleAvatar(
                      backgroundColor: color,
                      radius: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Image(
                                image: Img),
                            Text(quatestext,style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class imagepreview extends StatelessWidget {
  final String url;
  imagepreview({this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.clear),color: Colors.black,),
      ),
      body: Container(
          child: PhotoView(
            imageProvider: NetworkImage(url),
          )
      ),
    );
  }
}
