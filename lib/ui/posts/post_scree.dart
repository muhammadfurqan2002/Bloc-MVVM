
import 'package:bloc_practice/bloc/posts/post_bloc.dart';
import 'package:bloc_practice/bloc/posts/post_event.dart';
import 'package:bloc_practice/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<PostBloc>().add(PostFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetched Data"),
        centerTitle: true,
      ),
      body: BlocBuilder<PostBloc,PostState>(builder: (context,state){
        if(state.status==PostStatus.loading){
          return CircularProgressIndicator();
        }else if(state.status==PostStatus.failure){
          return Text("Failure happen");
        }else {
          return ListView.builder(itemBuilder: (context, index) {
            return Card(child: Text(state.posts[index].body.toString()),);
          });
        }
      }),
    );
  }
}
