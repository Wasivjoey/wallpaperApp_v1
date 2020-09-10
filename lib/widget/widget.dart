import 'package:default_app/model/wallpaper_model.dart';
import 'package:flutter/material.dart';

Widget brandName(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Wallpaper", style: TextStyle(color: Colors.black87),),
      Text("App" ,style: TextStyle(color: Colors.blue),),
    ],
  );
}

Widget WallpapersList({List<WallpaperModel>wallpapers, context}){
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 16),
     child: GridView.count(
       crossAxisCount:  2,
       childAspectRatio: 0.6,
       mainAxisSpacing: 6.0,
       crossAxisSpacing: 6.0,
       children: wallpapers.map((e){
         return GridTile(
           child: Container(
             Image.ne
           ) ,) 
       }).toList(),
      
        
       )
   )
}