import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  static final String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data="Button";
  Future _openDetails()async{
    Map result = await Navigator.of(context).push(new MaterialPageRoute(
        builder:(BuildContext context){
          return new DetailPage("Flutter 22");
          }
        ));

    if(result!=null&&result.containsKey('data')){
      setState(() {
        data =result['data'];
      });
    }
    else{
      print("Nothing");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FlatButton(
          onPressed: (){
            _openDetails();
          },
          color:Colors.blue,
          child: Text(data),

        ),
      ),
    );
  }
}
