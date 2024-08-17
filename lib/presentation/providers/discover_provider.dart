import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepository;
  
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required  this.videosRepository
  });

  Future<void> loadNextPage() async {
    Future.delayed(const Duration(seconds: 2));
    
    // List<VideoPost> newVideos = videoPosts.map(
    //   (video) => LocalVideoModel.fromJson(video).toVideoEntity()
    // ).toList();

    final newVideos = await videosRepository.getTrendingVideoByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}