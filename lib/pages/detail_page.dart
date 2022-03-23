import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  static final String id="detail_page";

  final String input;
  DetailPage(this.input);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child:FlatButton(
              onPressed: (){
            Navigator.of(context).pop({'data':"DART"});
          },
          color: Colors.red,
           child: Text("ButtonBack"),
          )
        ),
    );
  }
}
