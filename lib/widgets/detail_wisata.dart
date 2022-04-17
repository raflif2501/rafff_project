import 'package:flutter/material.dart';
import 'package:rafff_project/model/tourism_place.dart';
class DetailWisata extends StatelessWidget {
  const DetailWisata({Key? key, required this.data}) : super(key: key);

  final Place data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Wisata'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(data.mainImage),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                data.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Gendis-Script',
                ),
              ),
            ),//Container for Title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(data.open),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.alarm_sharp),
                      Text(data.hours),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.paid_outlined),
                      Text(data.ticket),
                    ],
                  ),
                ],
              ),
            ),//Container for Icons
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                data.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jelly-Anika',
                ),
              ),
            ),//Container for Description
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.mainImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.mainImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.mainImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                ],
              ),
            ),//Container for Photos
          ],
        ),
      ),
    );
  }
}