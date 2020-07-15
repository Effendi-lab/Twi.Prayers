import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/annwummere_o_me_nyankopon.dart';
class AnnwummereList extends StatefulWidget {
  @override
  _AnnwummereListState createState() => _AnnwummereListState();
}

class _AnnwummereListState extends State<AnnwummereList> {
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
              child: GradientAppBar(title: Text("Annwummere", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
              ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: <Widget>[



                      ListTile(
                        title: Text(
                          "O me Nyankopɔn, me Wura, me kra Ahwehwɛde! Saa W'akoa yi pɛ sɛ ɔda wɔ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnnwummereOMeNyankopon()))
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