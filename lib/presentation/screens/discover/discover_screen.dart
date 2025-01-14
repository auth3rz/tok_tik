import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik/presentation/providers/discover_provider.dart';
import 'package:tok_tik/widgets/shared/video_scrollable.dart';


class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading ?
      const Center(child: CircularProgressIndicator(strokeWidth: 2)) :
      VideoScrollable(videos: discoverProvider.videos),
    );
  }
}