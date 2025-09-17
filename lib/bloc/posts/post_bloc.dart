import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/posts/post_event.dart';
import 'package:bloc_practice/model/posts.dart';
import 'package:bloc_practice/repository/post_repository.dart';
import 'package:bloc_practice/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {

  final PostRepository postRepository;
  PostBloc(this.postRepository) : super(PostState()) {
    on<PostFetched>(_fetchPost);
  }
  void _fetchPost(PostFetched event,Emitter<PostState> emit)async{
    await postRepository.fetchPosts().then((val){
      emit.call(state.copyWith(posts: val,message: "Posts fetched successfully",status: PostStatus.success));
    }).onError((error,stackTrace){
      print(error);
      print(stackTrace);
      emit.call(state.copyWith(message: error.toString(),status: PostStatus.failure));
    });
  }
}
