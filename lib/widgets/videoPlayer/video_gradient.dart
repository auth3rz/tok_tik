import 'package:flutter/material.dart';

class VideoGradient extends StatelessWidget {
  const VideoGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.7, 1.0],
            colors: [
              Colors.transparent,
              Colors.black87,
            ]
          )
        ),
      ),
    );
  }
}