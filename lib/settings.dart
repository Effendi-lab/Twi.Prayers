import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class SettingsScreen extends StatefulWidget {

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
          centerTitle: true, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),


        body: ListView(
            children: <Widget>[


        /*      Row(children: <Widget>[
                Expanded(child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 10.0,8.0, 0.0),
                  child: AutoSizeText("Theme", style: TextStyle (fontFamily: "NotoSerif", fontSize: 25),
                    textAlign: TextAlign.center,),
                ))
              ],),*/
              /*Card(
                elevation: 5,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: <Widget>[

                    Consumer<ThemeNotifier>(builder: (context, notifier, child)=> SwitchListTile(
                      title: Text("Dark Mode" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      onChanged: (val){
                        notifier.toggleTheme();
                      },
                      value: notifier.darkTheme,
                    ),
                    ),

                  ],
                ),
              ),*/

              Card(
                margin: EdgeInsets.all(11),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("The team is highly indepted to the National Spiritual Assembly of the Bahá'ís of Ghana, "
                      "Ghana Translation Board, Bahá'í Publishing Agency, Western Regional Bahá'í "
                      "Council and the Local Spiritual Assembly of Bawdie.", style: TextStyle(fontSize: 20,
                      fontFamily: "NotoSerif"), textAlign: TextAlign.start,),
                ),
              ),

              Divider(height: 0.0, color: Colors.transparent,),

Padding(
  padding: const EdgeInsets.all(15.0),
  child:   Text("Credit to all members who contributed in diverse ways.", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif",
      fontStyle: FontStyle.italic, ),
    textAlign: TextAlign.start,),
),


Divider(height: 50, color: Colors.transparent,),


              ListTile(
                title: Text("Created by:",  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "NotoSerif", fontSize: 20),
                ),
                subtitle: Text("Army of Light",  textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: "NotoSerif", fontSize: 15),),
              ),


              ListTile(
                title: Text("Onyame Nkae", textAlign: TextAlign.center,),
                subtitle: Text("Version 1.1.0", textAlign: TextAlign.center,),
              ),


Row(
  mainAxisAlignment: MainAxisAlignment.center,
 mainAxisSize: MainAxisSize.max,
  children: <Widget>[


  ],
)

            ],


          ),





      ),
    );

  }

}


