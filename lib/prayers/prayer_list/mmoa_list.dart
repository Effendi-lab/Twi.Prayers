import 'package:flutter/material.dart';
import 'package:onyamenkae/prayers/prayer_detail/mmoa_awurade.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/mmoa_o_me_nyankopon.dart';



class MmoaList extends StatefulWidget {
  @override
  _MmoaListState createState() => _MmoaListState();
}

class _MmoaListState extends State<MmoaList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GradientAppBar(title: Text("Onyame Nkae",  style: TextStyle(fontSize: 25, fontFamily: "NotoSerif")),
              centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black ,Colors.red[300],])
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Mmoa", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false,
               gradient: LinearGradient(colors: [Colors.black ,Colors.red[300],])),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O me Nyankopɔn, m'Awurade ne me Wura! Matew me ho afi me nkurɔfo ho, na me n..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OMeNyankopon()))
                        },
                      ),
                      Divider(
                        height: 2,
                      ),
                      ListTile(
                        title: Text(
                          "Awurade! Yɛyɛ mmɔbɔ hu yɛn mmɔbɔ; yɛyɛ ahiafo, ma yɛn yɛn kyɛfa a ɛfi W'ahonya p..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("'Abdu'l-Bahá"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Awurade()))
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