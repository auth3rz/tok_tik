
import 'package:tok_tik/domain/entities/video_post.dart';

class LocalVideoModel {
    final String name;
    final String videoUrl;
    final int    likes;
    final int    views;

    LocalVideoModel({
        required this.name,
        required this.videoUrl,
        this.likes = 0,
        this.views = 0,
    });

    factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
        name     : json["name"] ?? 'Sin Nombre',
        videoUrl : json["videoUrl"],
        likes    : json["likes"] ?? 0,
        views    : json["views"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "name"     : name,
        "videoUrl" : videoUrl,
        "likes"    : likes,
        "views"    : views,
    };

    VideoPost toVideoEntity() => VideoPost(
      videoUrl : videoUrl,
      caption  : name,
      likes    : likes,
      views    : views
    );
}
