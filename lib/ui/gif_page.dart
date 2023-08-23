import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  const GifPage(this._gifData, {super.key});

  final Map _gifData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _gifData["title"],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: (){
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Image.network(
        _gifData["images"]["fixed_height"]["url"],
      ),
    );
  }
}
