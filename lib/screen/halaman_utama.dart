import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rafff_project/model/tourism_place.dart';
import 'package:rafff_project/Sevice/api_service.dart';
import 'package:rafff_project/screen/halaman_tambah.dart';
import 'package:rafff_project/widgets/detail_wisata.dart';
// import 'package:tugas3/widgets/detail_wisata.dart';
import 'package:rafff_project/widgets/item_wisata.dart';
// import 'halaman_tambah_edit.dart';

class HalamanUtama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Wisata'),
      ),
      body: GridWisata(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TambahWisata()));
        },
      ),
    );
  }
}

class GridWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<List<Place>>(
          future: ApiService.getWisata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              List<Place>? listWisata = snapshot.data;

              return ListView.builder(
                itemCount: listWisata?.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailWisata(data: snapshot.data![index]);
                      }));
                    },
                    child: ItemWisata(listWisata![index]),
                  );
                },
              );
            }
          },
        ));
  }
}