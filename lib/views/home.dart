import 'dart:convert';

import 'package:default_app/data/data.dart';
import 'package:default_app/model/categories_model.dart';
import 'package:default_app/model/wallpaper_model.dart';
import 'package:default_app/widget/widget.dart';
import 'package:flutter/material.dart'; 
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoriesModel> categories = new List();
  List<WallpaperModel> wallpapers = new List();

  getTrendingWallpapers() async {
    var  response = await   http.get("https://api.pexels.com/v1/curated?per_page=1",
    headers:{
      "Authorization" : apiKey
    });

    print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData[ "photos"].forEach((element){
      print(element);

      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);


    });

    setState(() {
      
    });
  }

  void initState(){
    getTrendingWallpapers();
    categories = getCategories();
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,

      ),
      body: Container(
        child : Column(children: <Widget>[
          Container( 
            decoration: BoxDecoration(
              color: Color(0xfff5f8fd),
              borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(horizontal: 24),
            margin: EdgeInsets.symmetric(horizontal: 24),
          child :Row(children: <Widget>[
            Expanded(
              child:TextField(
              decoration: InputDecoration(
                hintText: "Search Wallpaper ",
                border: InputBorder.none
                ),
            ),
            ), 
            Icon(Icons.search)
          ],)
          ),
           SizedBox(height: 16,),
           Container(
             height: 80,
           child :ListView.builder(itemCount: categories.length, 
           padding: EdgeInsets.symmetric(horizontal: 24),
           scrollDirection: Axis.horizontal,
           shrinkWrap: true,
           itemBuilder: (context, index) {

             return CategorieTile(
               
               title: categories[index].categoriesName,
               imgUrl: categories[index].imgUrl ,
             );
           } )
        )
        ],)
      ),

    );
  }
}

class CategorieTile extends StatelessWidget {

  final String imgUrl, title ;
  CategorieTile({ @required this.imgUrl, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      child: Stack(
        children: <Widget>[
          ClipRRect(borderRadius: BorderRadius.circular(16), 
         
            child: Image.network(imgUrl, height: 50, width: 100, )),
          
          Container(
            color: Colors.black26,
            height: 50, width: 100,
            alignment: Alignment.center,
            child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15 ),),),
        ]
      ),
      
    );
  }
}