import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable{
  const PostEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class PostFetched extends PostEvent{}
