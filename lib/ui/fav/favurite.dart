import 'package:bloc_practice/bloc/fav_bloc/fav_blc_bloc.dart';
import 'package:bloc_practice/bloc/fav_bloc/fav_blc_event.dart';
import 'package:bloc_practice/bloc/fav_bloc/fav_blc_state.dart';
import 'package:bloc_practice/model/favourite_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<FavBlcBloc>().add(FetchFavouriteList());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favourite App"),
        actions: [
          BlocBuilder<FavBlcBloc, FavBlocState>(
         builder: (context, state) {
          return IconButton(onPressed: (){
          context.read<FavBlcBloc>().add(DeleteFavouriteList());
          }, icon: Icon(Icons.delete));
  },
)
        ],
      ),
      body:BlocBuilder<FavBlcBloc,FavBlocState>(builder: (context,state){
        if(state.status==ListStatus.loading){
          return CircularProgressIndicator();
        }else if(state.status==ListStatus.failure){
          return Text("Something went Wrong");
        }else {
          return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                final item=state.list[index];
            return ListTile(
              title: Checkbox(value: state.tempList.contains(item) , onChanged: (value){
                if (value == true) {
                  context.read<FavBlcBloc>().add(SelectFavouriteList(item: item));
                } else {
                  context.read<FavBlcBloc>().add(UnSelectFavouriteList(item: item));
                }
              }),
              subtitle: Text(state.list[index].value),
              trailing: IconButton(onPressed: (){
                FavouriteItemModel item=new FavouriteItemModel(id: index.toString(),
                    value:state.list[index].value,isFavourite: state.list[index].isFavourite?false:true);
                    context.read<FavBlcBloc>().add(LikeFavouriteList(item: item));
                }, icon: Icon( state.list[index].isFavourite? Icons.favorite:Icons.favorite_border_outlined)),
            );
          });
        }
      }),
    );
  }
}
