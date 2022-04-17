// import 'package:flutter/material.dart';
// import 'package:rafff_project/model/tourism_place.dart';
// class DetailScreen extends StatelessWidget {
//   const DetailScreen({Key? key, required this.place}) : super(key: key);
//
//   final TourismPlace place;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Image.asset(place.imageAsset, height: 300.0),
//             Container(
//               margin: const EdgeInsets.only(top: 16.0),
//               child: Text(
//                 place.name,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 30.0,
//                   fontFamily: 'Gendis-Script',
//                 ),
//               ),
//             ),//Container for Title
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       Icon(Icons.calendar_today),
//                       Text(place.open),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       Icon(Icons.alarm_sharp),
//                       Text(place.jam),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       Icon(Icons.paid_outlined),
//                       Text(place.tiket),
//                     ],
//                   ),
//                 ],
//               ),
//             ),//Container for Icons
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 place.deskripsi,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16.0,
//                   fontFamily: 'Jelly-Anika',
//                 ),
//               ),
//             ),//Container for Description
//             Container(
//               height: 150,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(25.0),
//                     child: Image.asset(place.image1),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(25.0),
//                     child: Image.asset(place.image2),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(25.0),
//                     child: Image.asset(place.image3),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                   ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(25.0),
//                     child: Image.asset(place.image4),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                   ),
//                 ],
//               ),
//             ),//Container for Photos
//           ],
//         ),
//       ),
//     );
//   }
// }
