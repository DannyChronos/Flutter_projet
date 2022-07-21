// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Parts/affichage.dart';
import 'login.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(248, 255, 255, 255), 
        title: Text('Welcome',style: TextStyle(color: Color.fromARGB(255, 255, 72, 72),fontWeight: FontWeight.bold, fontSize: 20.0),),
        shadowColor: Color.fromARGB(213, 0, 0, 0),
        centerTitle: true,
        leading: Builder(
          builder:(BuildContext context){
            return IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
              }, 
              icon: Icon(Icons.account_circle_rounded,size: 35.0),
              color: Color.fromARGB(255, 255, 72, 72),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,);
          },
        ),
      ),        
      drawer: Drawer(
          child: ListView(children: [
            ListTile(
              title: Text("Menus de connexion",style: TextStyle(color: Colors.white,fontSize: 11.0,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.menu,color: Colors.white),
              tileColor: Color.fromARGB(255, 255, 72, 72),
              ),
              ListTile(
              title: Text("Favoris",style: TextStyle(color: Color.fromARGB(255, 241, 22, 22),fontSize: 15.0,fontWeight: FontWeight.bold),),
              ),
              ListTile(
              title: Text("Se connecter",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 18.0,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.login_outlined,color: Color.fromARGB(255, 7, 52, 255),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              ),
              ListTile(
              title: Text("S'inscrire",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 18.0,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.account_box_sharp,color: Color.fromARGB(255, 245, 5, 5),),
              ),
          ]),
      ),
      drawerScrimColor: Color.fromARGB(255, 150, 33, 41),
      body: Center(child: Text("Bienvenue sur la platforme de connection et d'inscription 'Cliquez sur l'icone account pour vous connecter ou vous inscrire'",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.black),)),
      );
  }
}