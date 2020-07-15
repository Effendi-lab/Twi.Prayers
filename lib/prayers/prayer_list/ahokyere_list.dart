import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/ahokyere_nea_ode_ne_were.dart';



import 'package:onyamenkae/prayers/prayer_detail/ahokyere_onyankopon_som_me_bo.dart';


class AhokyereList extends StatefulWidget {
  @override
  _AhokyereListState createState() => _AhokyereListState();
}

class _AhokyereListState extends State<AhokyereList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Ahokyere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]), ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("Nea ɔde ne werɛ hyɛ Onyankopɔn mu no, Onyankopɔn som bo ma no kyɛn ade nyin..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AhokyereNeaOdeNeWere()))
                        },
                      ),
                      Divider(),

                      ListTile(
                        title: Text(
                          "Onyankopɔn som me bo, Nokware ni Ɔno na Ɔyɛ ade nyinaa. Wɔn a wɔgye no di no nya..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AhokyereOnyankoponSomMeBo()))
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