import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/osom_no_nkonimdi_o_awurade.dart';





class OsomNoNkonimdiList extends StatefulWidget {
  @override
  _OsomNoNkonimdiListState createState() => _OsomNoNkonimdiListState();
}

class _OsomNoNkonimdiListState extends State<OsomNoNkonimdiList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),),
        ),

        body: Scaffold(
            appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Ɔsom No Nkonimdi", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]), ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "O Awurade! Ma asase so nnipa nyinaa nya Wo som yi mu kwan, sɛnea ɛbɛyɛ a ɔkra bia..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Báb"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OsomNoNkonimdiOAwurade()))
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