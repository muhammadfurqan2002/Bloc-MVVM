
import 'package:equatable/equatable.dart';

import '../../model/favourite_item_model.dart';

enum ListStatus{loading,success,failure}

class FavBlocState extends Equatable {
  final List<FavouriteItemModel> list;
  final List<FavouriteItemModel> tempList;
  final ListStatus status;
  const FavBlocState({
    this.list=const [],
    this.tempList=const [],
    this.status=ListStatus.loading
  });

  FavBlocState copyWith({List<FavouriteItemModel>? list,List<FavouriteItemModel>? tempList,ListStatus? status}){
    return FavBlocState(
      list:list??this.list,
        tempList:tempList?? this.tempList,
      status: status??this.status
    );
  }

  @override
  List<Object?> get props => [status,list,tempList];

}