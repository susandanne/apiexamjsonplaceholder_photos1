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
        appBar: AppBar(
            title:
                const Text('product details', style: TextStyle(fontSize: 40))),
        body: ListView.builder(itemCount:1,itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading:Image.network(widget.product.url ?? ""),

                title:Column(
                  children: [
                    Text(widget.product.title ?? ""),
                    Text(widget.product.thumbnailUrl ?? "")
                  ],
                ) ,


              ),
            ],
          );
        }));
  }
}
