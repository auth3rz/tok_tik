import 'package:tok_tik/domain/datasource/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';

class VideoPostsRepository implements VideoPostRepository{

  final VideoPostDatasource videosDatasource;

  VideoPostsRepository({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videosDatasource.getTrendingVideoByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    // TODO: implement getTrendingVideoByUser
    throw UnimplementedError();
  }

}