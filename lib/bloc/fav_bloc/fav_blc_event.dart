import 'package:bloc_practice/model/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

abstract class FavBlcEvent extends Equatable{
  const FavBlcEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class FetchFavouriteList extends FavBlcEvent{}
class DeleteFavouriteList extends FavBlcEvent{}
class LikeFavouriteList extends FavBlcEvent{
  final FavouriteItemModel item;
  const LikeFavouriteList({required this.item});
  @override
  List<Object?> get props => [item];
}
class SelectFavouriteList extends FavBlcEvent{
  final FavouriteItemModel item;
  const SelectFavouriteList({required this.item});
  @override
  List<Object?> get props => [item];
}
class UnSelectFavouriteList extends FavBlcEvent{
  final FavouriteItemModel item;
  const UnSelectFavouriteList({required this.item});
  @override
  List<Object?> get props => [item];
}
