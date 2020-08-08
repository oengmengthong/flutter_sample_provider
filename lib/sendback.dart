import 'package:flutter/material.dart';
import 'package:flutter_provider/sendback_provider.dart';
import 'package:provider/provider.dart';

class SendBackData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = new TextEditingController();
    SendBackProvider sendBackProvider = Provider.of<SendBackProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: textController,
            decoration: InputDecoration(hintText: 'Input Data Here!'),
          ),
          FlatButton(
              onPressed: () {
                sendBackProvider.changedata(textController.text);
                return Navigator.pop(context);
              },
              child: Text('GET'))
        ],
      ),
    );
  }
}
