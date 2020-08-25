import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String firstName;
  final String lastName;
  final String small;
  final String full;
  final Function(String) onImageClicked;

  CustomCard(
      {this.title,
      this.firstName,
      this.lastName,
      this.small,
      this.full,
      this.onImageClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 35,
        height: 90,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.network(small, fit: BoxFit.cover),
                )),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              new Text(title ?? '', textAlign: TextAlign.left),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  new Text('Author:',
                      style: new TextStyle(
                        fontSize: 10.0,
                      )),
                  SizedBox(width: 5),
                  Row(children: [
                    new Text(firstName ?? '',
                        style: new TextStyle(
                          fontSize: 10.0,
                        )),
                    SizedBox(width: 5),
                    new Text(lastName ?? '',
                        style: new TextStyle(fontSize: 10.0))
                  ])
                ],
              )
            ])
          ],
        ),
      ),
      onTap: () => onImageClicked(full),
    );
  }
}