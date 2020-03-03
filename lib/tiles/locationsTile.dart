import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationTile extends StatelessWidget {
  final DocumentSnapshot snapshot;

  LocationTile(this.snapshot);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Image.network(
              snapshot.data['image'],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  snapshot.data['title'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  snapshot.data['address'],
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver no Mapa'),
                onPressed: () {
                  launch(
                      'https://www.google.com/maps/search/?api=1&query=${snapshot.data['lat']},'
                      '${snapshot.data['long']}');
                },
                textColor: Colors.blue,
              ),
              FlatButton(
                child: Text('Ligar'),
                onPressed: () {
                  launch('tel: ${snapshot.data['phone']}');
                },
                textColor: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
