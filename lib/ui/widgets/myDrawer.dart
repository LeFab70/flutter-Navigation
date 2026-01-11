import 'package:flutter/material.dart';
import 'package:navigation_app/config/global.params.dart';
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
         DrawerHeader(
           decoration: BoxDecoration(
             gradient: LinearGradient(colors:[
               Colors.deepOrangeAccent.shade100,Colors.white,Colors.lightBlue.shade200,
             ])
           ),
           child:Center(
             child: CircleAvatar(
               radius: 75,
               backgroundImage: AssetImage("images/pic.png"),

             ))
         
         ),
          ...(GlobalParams.menus as List).map((menu){
            return Column(
              children: [
                ListTile(
                  title: Text('${menu["title"]}',style: TextStyle(fontSize: 25), ),
                  leading: Icon(menu["icon"],color: menu["color"],size: 30,),
                  trailing: Icon(Icons.arrow_right_sharp,color: Colors.deepOrangeAccent,size: 30,),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context,"${menu["route"]}");
                  },
                ),
                 Divider(
                  color: Colors.deepOrange,
                  thickness: 0.1,
                ),
              ],
            );
          })
          // ListTile(
          //   title: Text("Home",style: TextStyle(fontSize: 25),),
          //   leading: Icon(Icons.home_filled,color: Colors.deepOrangeAccent,size: 30,),
          //   trailing: Icon(Icons.arrow_right_sharp,color: Colors.deepOrangeAccent,size: 30,),
          //
          // ),
          // Divider(
          //   color: Colors.deepOrange,
          //   thickness: 0.1,
          // ),
          // ListTile(
          //   title: Text("Météo",style:TextStyle(fontSize: 25)),
          //   leading: Icon(Icons.sunny_snowing,color: Colors.green,size:30),
          //   trailing: Icon(Icons.arrow_right_sharp,color: Colors.deepOrangeAccent,size: 30,),
          //   onTap: (){
          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context,"/meteo");
          //   },
          // ),
          // Divider(
          //   color: Colors.deepOrange,
          //   thickness: 0.1,
          // ),
          // ListTile(
          //   title: Text("Gallery",style:TextStyle(fontSize: 25)),
          //   leading: Icon(Icons.picture_in_picture,color: Colors.blue,size:30),
          //   trailing: Icon(Icons.arrow_right_sharp,color: Colors.deepOrangeAccent,size: 30,),
          //   onTap: (){
          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context,"/gallery");
          //
          //   },
          // ),
          //
          //
          // Divider(
          //   color: Colors.deepOrange,
          //   thickness: 0.1,
          // ),
          // ListTile(
          //   title: Text("Counter",style:TextStyle(fontSize: 25)),
          //   leading: Icon(Icons.countertops,color: Colors.blue,size:30),
          //   trailing: Icon(Icons.arrow_right_sharp,color: Colors.deepOrangeAccent,size: 30,),
          //   onTap: (){
          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context,"/counter");
          //
          //   },
          // )
        ],
      ),
    );
  }
}
