import 'package:flutter/material.dart';
import 'package:flutter_provider/sendback_provider.dart';
import 'package:flutter_provider/sendback.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SendBackProvider sendBackProvider = Provider.of<SendBackProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Provider'),
      ),
      body: Column(
        children: <Widget>[
          Text('Test data get from SendBack Screen!'),
          Text(sendBackProvider.data == null ? '' : sendBackProvider.data, style: TextStyle(fontSize: 30),),
          FlatButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SendBackData())),
              child: Text('Input'))
        ],
      ),
    );
  }
}
