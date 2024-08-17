import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/shared/responsive/responsive_size.dart';
import 'package:tok_tik/widgets/videoPlayer/full_screen_player.dart';
import 'package:tok_tik/widgets/videoPlayer/video_buttons.dart';

class VideoScrollable extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollable({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return Stack(children: [
          SizedBox.expand(
            child: FullScreenPlayer(url: videos[index].videoUrl, caption: videos[index].caption),
          ),
          Positioned(
            bottom: sh(0.02, context),
            right: sw(0.03, context),
            child: VideoButtons(video: videos[index]))
        ]);
      },
    );
  }
}