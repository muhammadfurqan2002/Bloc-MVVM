import 'package:bloc_practice/model/favourite_item_model.dart';

class FavouriteRepository{

 Future<List<FavouriteItemModel>> fetchList()async{
   await Future.delayed(Duration(seconds: 3));
   return List.of(_generateList(10));
 }

 List<FavouriteItemModel> _generateList(int length){
    return List.generate(10, (index){
      return  FavouriteItemModel(id: index.toString(), value: "item $index");
    });
 }
}