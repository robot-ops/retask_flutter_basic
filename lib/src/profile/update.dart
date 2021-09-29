// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:retask_flutter_basic/src/ui/homepage/content_list.dart';

class Data {
  final String? status, imgUrl;

  const Data({this.status, this.imgUrl});
}

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _statusController = TextEditingController();
  final _imgUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Status'),
            controller: _statusController,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Image Url'),
            controller: _imgUrlController,
          ),
          ElevatedButton(
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ContentList(
                    value: Data(
                        status: _statusController.text,
                        imgUrl: _imgUrlController.text)),
              );
              Navigator.of(context).push(route);
            },
            child: Text('Update'),
          )
        ],
      )),
    );
  }
}
