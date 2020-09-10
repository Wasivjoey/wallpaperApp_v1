import 'package:default_app/model/categories_model.dart';

String apiKey = "563492ad6f9170000100000107c0a3c950e6418fb81b65882a5d93fa";

List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl = 
  "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "Nature" ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //

  categoriesModel.imgUrl =
   "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "Food" ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //

   categoriesModel.imgUrl = 
   "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "Covid-19" ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //

  categoriesModel.imgUrl = 
  "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "Abstract" ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //

  categoriesModel.imgUrl = 
  "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "People" ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();
  
  //

  categoriesModel.imgUrl = 
  "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" ;
  categoriesModel.categoriesName = "Vintage " ;
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

 return categories;
}