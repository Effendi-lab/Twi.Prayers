import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/prayers/prayer_detail/awofo_mebisa_wo.dart';

class AwofoList extends StatefulWidget {
  @override
  _AwofoListState createState() => _AwofoListState();
}

class _AwofoListState extends State<AwofoList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Awofo", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,   gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
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
                          "Mebisa Wo hɔ bɔnefafri, O me Nyankopɔn, na mesrɛ sɛ kyerɛ ɔkwan a Wopɛ sɛ Wo nk..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AwofoMebisaWo()))
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