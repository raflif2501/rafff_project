import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rafff_project/model/tourism_place.dart';
import 'package:rafff_project/screen/halaman_utama.dart';
import 'package:http/http.dart'as http;
import 'package:rafff_project/Sevice/api_service.dart';
import 'package:rafff_project/widgets/detail_wisata.dart';

class EditWisata extends StatelessWidget {
  final Place data;

  EditWisata({required this.data});
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _lokasiController = TextEditingController();
  TextEditingController _hariController = TextEditingController();
  TextEditingController _jamController = TextEditingController();
  TextEditingController _hargaController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _imageController = TextEditingController();
  Future ubahWisata() async {
    final response = await http.put(Uri.parse("https://625a05cb43fda1299a14aa37.mockapi.io/api/v1/tourism-places/" + data.id.toString()),body: {
      "name": _namaController.text,
      "location": _lokasiController.text,
      "open": _hariController.text,
      "hours": _jamController.text,
      "ticket": _hargaController.text,
      "description": _deskripsiController.text,
      "main-image": _imageController.text,
    });

    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Wisata"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.00),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _namaController..text = data.name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Nama Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Nama Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _lokasiController..text = data.location,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Lokasi Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Lokasi Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _hariController..text = data.open,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Hari Buka Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Hari Buka Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _jamController..text = data.hours,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Jam Buka Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Jam Buka Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _hargaController..text = data.ticket,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Harga Tiket"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Harga Tiket";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _deskripsiController..text = data.description,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Deskripsi Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Deskripsi Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _imageController..text = data.mainImage,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Gambar 1 Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Gambar 1 Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                    ubahWisata().then((value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanUtama()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Wisata berhasil diubah"),
                          ));
                    });
                  }
                }, child: Text("Ubah"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}