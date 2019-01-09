import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Image_Slide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Image_Slide_State();
}

class Image_Slide_State extends State<Image_Slide> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: new Text('Image Slider'),
        ),
        body: Center(
          child: new SizedBox(
              height: 200,
              width: 400,
              child: new Carousel(
                images: [
                  new ExactAssetImage('images/1.png'),
                  new ExactAssetImage('images/download.png'),
                  new ExactAssetImage('images/images.jpg'),
                ],
              )),
        ));
  }
}
