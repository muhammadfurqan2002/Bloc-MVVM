part of 'post_bloc.dart';

 class PostState extends Equatable {
  final List<Posts> posts;
  final PostStatus status;
  final String message;
  const PostState({
    this.posts=const [],
    this.status=PostStatus.loading,
    this.message=""
  });

  PostState copyWith({List<Posts>? posts,PostStatus? status,String? message}){
    return PostState(
      posts: posts??this.posts,
      status: status??this.status,
      message: message??this.message
    );
}

  @override
  // TODO: implement props
  List<Object?> get props => [posts,status,message];
}
