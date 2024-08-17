import 'package:tok_tik/domain/datasource/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_posts.dart';

class LocalVideosDatasource implements VideoPostDatasource{
  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    
    final  List<VideoPost> newVideos = videoPosts.map((video)  => LocalVideoModel.fromJson(video).toVideoEntity()).toList();

    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    // TODO: implement getTrendingVideoByUser
    throw UnimplementedError();
  }

}