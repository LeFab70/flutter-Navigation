import 'package:flutter/material.dart';

class GlobalParams{
static List<Map<String,dynamic>> menus=[
   {"title":"Counter", "icon":Icons.countertops,"color": Colors.green, 'route':"/counter"},
  {"title":"Meteo", "icon":Icons.sunny_snowing,"color": Colors.blue, 'route':"/meteo"},
  {"title":"Gallery", "icon":Icons.picture_in_picture,"color": Colors.orange, 'route':"/gallery"},
 ];
}