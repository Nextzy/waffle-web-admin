import 'package:design_system/lib.dart';

class AppVideoPlayer extends AppStatefulWidget {
  const AppVideoPlayer({super.key, required this.url, this.autoPlay = false});

  final String url;
  final bool autoPlay;

  @override
  AppState<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends AppState<AppVideoPlayer> {
  late FlickManager _manager;

  @override
  void initState() {
    super.initState();
    _manager = FlickManager(
      videoPlayerController:
          VideoPlayerController.networkUrl(Uri.parse(widget.url)),
      autoPlay: widget.autoPlay,
    );
  }

  @override
  void dispose() {
    _manager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      child: FlickVideoPlayer(
        flickManager: _manager,
      ),
    );
  }
}
