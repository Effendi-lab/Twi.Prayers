import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/nhyira.dart';



class NnianimList extends StatefulWidget {
  @override
  _NnianimListState createState() => _NnianimListState();
}

class _NnianimListState extends State<NnianimList> {
  var query = MediaQueryData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif" ),),
          centerTitle: true, elevation: 50, brightness: Brightness.light,
          gradient: LinearGradient(colors: [Colors.black ,Colors.red[300],])),
        ),

      body: Scaffold(
    appBar: PreferredSize( 
      preferredSize: Size.fromHeight(40),
      child: GradientAppBar(title: Text("Nnianim", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
        centerTitle: true, automaticallyImplyLeading: false,
          gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])),
    ),

      body:ListView(

        children: <Widget>[
         Card(
           elevation: 0.0,
           child: Column(
             children: <Widget>[


               ListTile(
                 title: Text(
                   "Nhyira nkae beae no, ofi no, faako, kuropɔn, ne koma no, bepɔw, hintabea hɔ, ɔbɔdan n..."
                   , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                 subtitle: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Bahá'u'lláh"),
                 ),
                 onTap: ()=>{
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Nhyira()))
                 },
               ),
               Divider(
                 height: 2,
               )
             ],
           ),
         )
        ],
      )




      ),

      ),
    );
  }
}
