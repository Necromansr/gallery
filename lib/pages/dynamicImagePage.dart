import 'package:flutter/material.dart';

class DynamicImage extends StatefulWidget {
  final String imageUrl;

  DynamicImage(this.imageUrl);

  @override
  createState() => _DynamicImageState();
}

class _DynamicImageState extends State<DynamicImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image')),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}