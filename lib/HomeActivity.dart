import 'dart:convert';

import 'package:apiexamjsonplaceholder_photos/MODEL.dart';
import 'package:apiexamjsonplaceholder_photos/New_pro_add_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> ProData=[];
  @override
  void initState() {
    super.initState();
    getDAtaFromJsonPhotos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'photo Gallery App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ProData.length,
        itemBuilder: (context, index) {
          return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(ProData[index].title ?? ''),
                subtitle: Text(ProData[index].thumbnailUrl ?? ''),
                leading: Image.network(ProData[index].url ?? ''),onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  new_page_add(product:ProData[index])));
              } ,
                // trailing: NetworkImage('');

              )],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: () {
      //       // Navigator.push(context,
      //       //     MaterialPageRoute(builder: (context) => const new_page_add()));
      //     },
      //     icon: const Icon(Icons.icecream),
      //     label: const Text('add me')),
    );
  }

  Future<void> getDAtaFromJsonPhotos() async {
    Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');

    Response response = await get(uri);
    print(response);
    print(response.statusCode);
    print(response.body);


    if (response.statusCode == 200) {
      var decodedata = jsonDecode(response.body);
     // var list=decodedata[''];

        for(var item in decodedata ){
         Product ppp=Product(
             // albumId:item[albumId],
             //  id:item['id'],
             title:item['title'],
             url:item['url'],
             thumbnailUrl:item['thumbnailUrl']);
         ProData.add(ppp);
         setState(() {

         });
        }

    }
  }
}
