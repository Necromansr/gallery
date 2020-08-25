import '../struct/photo.dart';
import 'package:flutter/material.dart';
import 'customCard.dart';

class PhotosList extends StatelessWidget {
  final List<Photo> photos;
  final Function(String) onImageClicked;

  PhotosList({Key key, this.photos, this.onImageClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return CustomCard(title: photos[index].title, firstName: photos[index].firstName, lastName: photos[index].lastName, small: photos[index].small, full: photos[index].full, onImageClicked: onImageClicked);
      },
    );
  }
}