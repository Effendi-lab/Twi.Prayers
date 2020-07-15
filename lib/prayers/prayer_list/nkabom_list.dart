import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/nkabom_o_me_nyankopon.dart';



class NkabomList extends StatefulWidget {
  @override
  _NkabomListState createState() => _NkabomListState();
}

class _NkabomListState extends State<NkabomList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Nkabom", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O me Nyankopɔn, O me Nyankopɔn! ka Wo nkoa nyinaa koma bɔ mu na yi W'apɛde kɛs..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NkabomOMeNyankopon()))
                        },
                      ),


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