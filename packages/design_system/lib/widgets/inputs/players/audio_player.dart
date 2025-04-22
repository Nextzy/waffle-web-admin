import 'package:design_system/lib.dart';

class AppAudioPlayer extends AppStatefulWidget {
  const AppAudioPlayer(
      {super.key,
      super.size = WidgetSize.md,
      this.style = AppTextFieldStyle.outline,
      required this.url,
      this.autoPlay = false});

  final AppTextFieldStyle style;
  final String url;
  final bool autoPlay;

  @override
  AppState<AppAudioPlayer> createState() => _AppAudioPlayerState();
}

class _AppAudioPlayerState extends AppState<AppAudioPlayer> {
  late AudioPlayer player = AudioPlayer();
  bool _isMuted = false;

  PlayerState? _playerState;
  Duration? _position;
  Duration? _duration;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  bool get _isPlaying => _playerState == PlayerState.playing;

  String get _positionText => _position.toString().split('.').first;

  String get _durationText => _duration.toString().split('.').first;

  @override
  void initState() {
    super.initState();

    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSourceUrl(widget.url);

      if (widget.autoPlay) {
        await player.resume();
      }

      _playerState = player.state;

      player.getCurrentPosition().then((value) => {
            setState(() {
              _position = value;
            })
          });

      player.getDuration().then((value) => {
            setState(() {
              _duration = value;
            })
          });

      _initStreams();
    });
  }

  Future<void> _play() async {
    await player.resume();
    setState(() => _playerState = PlayerState.playing);
  }

  Future<void> _pause() async {
    await player.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  Future<void> _mute() async {
    await player.setVolume(0);
    setState(() => _isMuted = true);
  }

  Future<void> _unMute() async {
    await player.setVolume(1);
    setState(() => _isMuted = false);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerLayout(
      padding: padding,
      decoration: BoxDecoration(
        color: widget.style == AppTextFieldStyle.shaded
            ? context.theme.color.bgSurface2
            : context.theme.color.bg,
        border: widget.style == AppTextFieldStyle.shaded
            ? null
            : Border.all(color: context.theme.color.border),
        borderRadius: context.theme.borderRadius.md,
      ),
      child: RowLayout(children: [
        IconButton(
          onPressed: _playerState != null
              ? _isPlaying
                  ? _pause
                  : _play
              : null,
          iconSize: iconSize,
          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
          color: context.theme.color.iconPrimary,
          padding: padding,
        ),
        AppText(_position != null ? _positionText : '0:00:00',
            style: TextStyle(
              color: context.theme.color.textPrimary,
              fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
              fontWeight: FontWeight.w400,
            )),
        Expanded(
            child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 2,
            activeTrackColor: context.theme.color.bgInverse,
            inactiveTrackColor: context.theme.color.bgSurface3,
            thumbColor: context.theme.color.bgInverse,
            overlayColor: Colors.transparent,
          ),
          child: Slider(
            value: (_position != null &&
                    _duration != null &&
                    _position!.inMilliseconds > 0 &&
                    _position!.inMilliseconds < _duration!.inMilliseconds)
                ? _position!.inMilliseconds / _duration!.inMilliseconds
                : 0,
            onChanged: (value) {
              final duration = _duration;
              if (duration == null) {
                return;
              }
              final position = value * duration.inMilliseconds;
              player.seek(Duration(milliseconds: position.round()));
            },
          ),
        )),
        AppText(_duration != null ? _durationText : '0:00:00',
            style: TextStyle(
              color: context.theme.color.textPrimary,
              fontSize: widgetSize == WidgetSize.sm ? 12 : 14,
              fontWeight: FontWeight.w400,
            )),
        IconButton(
          onPressed: _isMuted ? _unMute : _mute,
          iconSize: iconSize,
          icon: Icon(_isMuted ? Icons.volume_mute : Icons.volume_up),
          color: context.theme.color.iconPrimary,
          padding: padding,
        ),
      ]),
    );
  }

  EdgeInsets get padding => switch (widgetSize) {
        WidgetSize.xxs =>
          const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        WidgetSize.xs => const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        WidgetSize.sm => const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        WidgetSize.md => const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        WidgetSize.lg => const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        WidgetSize.xl => const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        WidgetSize.xxl =>
          const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      };

  double get iconSize => switch (widgetSize) {
        WidgetSize.xxs => 14,
        WidgetSize.xs => 14,
        WidgetSize.sm => 14,
        WidgetSize.md => 18,
        WidgetSize.lg => 24,
        WidgetSize.xl => 24,
        WidgetSize.xxl => 24,
      };

  void _initStreams() {
    _durationSubscription = player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = player.onPositionChanged.listen(
      (p) => setState(() => _position = p),
    );

    _playerCompleteSubscription = player.onPlayerComplete.listen((event) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        player.onPlayerStateChanged.listen((state) {
      setState(() {
        _playerState = state;
      });
    });
  }
}
