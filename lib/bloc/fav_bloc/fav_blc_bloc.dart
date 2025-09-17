
import 'package:bloc/bloc.dart';
import 'package:bloc_practice/model/favourite_item_model.dart';
import 'package:bloc_practice/repository/favourite_repository.dart';

import 'fav_blc_event.dart';
import 'fav_blc_state.dart';


class FavBlcBloc extends Bloc<FavBlcEvent, FavBlocState> {
  final FavouriteRepository _favouriteRepository;
  List<FavouriteItemModel> list=[];
  List<FavouriteItemModel> tempList=[];
  FavBlcBloc(this._favouriteRepository) : super(FavBlocState()) {
    on<FetchFavouriteList>(_fetchList);
    on<LikeFavouriteList>(_likes);
    on<SelectFavouriteList>(_onSelect);
    on<UnSelectFavouriteList>(_onUnSelect);
    on<DeleteFavouriteList>(_onDelete);
  }

  void _fetchList(FetchFavouriteList event,Emitter<FavBlocState> emit)async{
    list=await _favouriteRepository.fetchList();
     emit.call(state.copyWith(list: List.from(list),status:ListStatus.success ));
  }

  void _likes(LikeFavouriteList event,Emitter<FavBlocState> emit)async{
    final index=list.indexWhere((val)=>val.id==event.item.id);

    if(event.item.isFavourite){

      if(tempList.contains(list[index])){
        tempList.remove(list[index]);
        tempList.add(event.item);
      }
    }else{
      if(tempList.contains(list[index])){
        tempList.remove(list[index]);
        tempList.add(event.item);
      }
    }




    list[index]=event.item;

     emit.call(state.copyWith(list: List.from(list),status:ListStatus.success,tempList:List.from(tempList)  ));
  }
  void _onSelect(SelectFavouriteList event,Emitter<FavBlocState> emit)async{
    tempList.add(event.item);
    emit.call(state.copyWith(tempList: List.from(tempList)));
  }
  void _onUnSelect(UnSelectFavouriteList event,Emitter<FavBlocState> emit)async{
    tempList.remove(event.item);
    emit.call(state.copyWith(tempList: List.from(tempList)));
  }
  void _onDelete(DeleteFavouriteList event,Emitter<FavBlocState> emit)async{
    for(int x=0;x<tempList.length;x++){
      list.remove(tempList[x]);
    }
    tempList.clear();
    emit.call(state.copyWith(tempList: List.from(tempList),list: List.from(list)));
  }

}

