import 'package:bloc_practice/equatble_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../freezed_example/model/cat_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CatModel> list=[
    CatModel(name: 'jkk'),
    CatModel(name: "meo"),
    CatModel(name: "meo"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data=[
      {
        "name":"454654",
      },{
        "name":null,
      },{
        "name":"454654",
      }
    ];
    for(int i=0;i<data.length;i++){
      list.add(CatModel.fromJson(data[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Freezed"),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
        return Card(child: Text(list[index].name),);
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },child: Icon(Icons.add),),
    );
  }
  }
