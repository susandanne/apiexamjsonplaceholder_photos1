import 'package:flutter/material.dart';

import 'MODEL.dart';

class new_page_add extends StatefulWidget {
  const new_page_add({super.key, required this.product});

  final Product product;

  @override
  State<new_page_add> createState() => _new_page_addState();
}

class _new_page_addState extends State<new_page_add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deatils Photo Gallery'),),
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), itemCount: 1,itemBuilder: (context,index){
        return InkWell(

          child: Card(
            elevation: 2.0,
            child: Column(
              children: [
                Expanded(child: Image.network(widget.product.url ?? "")),
                Text(widget.product.title ?? ''),
                Text(widget.product.thumbnailUrl ?? ''),
              ],
            ),
          ),
        );
      }),
    );
  }
}
// leading:Image.network(widget.product.url ?? ""),
//
// title:Text(widget.product.title ?? ""),
// subtitle:Text(widget.product.thumbnailUrl ?? ""),
