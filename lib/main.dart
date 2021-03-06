import 'package:flutter/material.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinch Zoom Image',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pinch Zoom Image'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: PinchZoomImage(
                image: CachedNetworkImage(
                  imageUrl: 'https://i.imgur.com/tKg0XEb.jpg',
                ),
                zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}