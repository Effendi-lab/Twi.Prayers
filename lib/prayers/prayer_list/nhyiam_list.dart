import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/nhyiam_o_honhom_mu_odomfo.dart';

import 'package:onyamenkae/prayers/prayer_detail/nhyiam_o_onyankopon.dart';



class NhyiamList extends StatefulWidget {
  @override
  _NhyiamListState createState() => _NhyiamListState();
}

class _NhyiamListState extends State<NhyiamList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Nhyiam", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
              ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O honhom mu Ɔdomfo! Dɔm a wɔahyia ha yi yɛ Wo nnamfo a W'ahoɔfɛ atwe wɔn na Wo..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NhyiamOHonhomMuOdomfo()))
                        },
                      ),
                      Divider(
                      ),
                      ListTile(
                        title: Text(
                          "O Onyankopɔn! O Onyankopɔn! Fi wo biakoyɛ ahemman a ani nhu no mu hwɛ sɛ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NhyiamOOnyankopon()))
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