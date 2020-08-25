import 'package:flutter/material.dart';
import '../components/photoList.dart';
import '../utils.dart';
import 'package:http/http.dart' as http;
import '../struct/photo.dart';
import 'dynamicImagePage.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client(), parsePhotos, 'https://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0'),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotosList(
                  photos: snapshot.data,
                  onImageClicked: (url) async {
                    await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DynamicImage(url),
                    ));
                  })
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}