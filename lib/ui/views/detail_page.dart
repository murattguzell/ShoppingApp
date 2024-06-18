import 'package:flutter/material.dart';
import 'package:shopping_app/data/entity/products.dart';

class DetailPage extends StatefulWidget {
  Products product;


  DetailPage({required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.product.ad),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.product.resim}"),
            Text("${widget.product.fiyat} ₺",style: const TextStyle(fontSize: 50),),

          ],
        ),
      ),
    );
  }
}
