import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/kununom_o_nyankopon.dart';

class KununomList extends StatefulWidget {
  @override
  _KununomListState createState() => _KununomListState();
}

class _KununomListState extends State<KununomList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,
          gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Kununom", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O Nyankopɔn, me Nyankopɔn! Saa abaawa (afenaa) yi su frɛ Wo de ne ho to Wo so, da..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>KununomONyankopon()))
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