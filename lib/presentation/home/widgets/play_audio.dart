part of '../ind_record_screen.dart';

class _PlayAudioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<player.PlayerBloc>(
      create: (_) => player.PlayerBloc()
        ..add(const player.PlayerEvent.init())
        ..add(const player.PlayerEvent.evaluateFileByteData()),
      child: _PlayAudio(),
    );
  }
}

class _PlayAudio extends StatefulWidget {
  @override
  State<_PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<_PlayAudio> {
  late final PlayerController playerController;
  //bool isPlaying = false;

  @override
  void initState() {
    playerController = PlayerController();
    _initiatePlayer();
    super.initState();
  }

  void _initiatePlayer() {
    playerController.onCompletion.listen((event) {
      context
          .read<player.PlayerBloc>()
          .add(const player.PlayerEvent.updatePlayingStatus(isPlaying: false));
    });
  }

  @override
  void dispose() async {
    await playerController.release();
    await playerController.stopPlayer();
    playerController.dispose();
    super.dispose();
  }

  Future<void> playAudio() async {
    if (context.read<player.PlayerBloc>().state.isPlaying) {
      await pauseAudio();
      return;
    }

    await playerController.startPlayer(finishMode: FinishMode.pause);
    if (mounted) {
      context
          .read<player.PlayerBloc>()
          .add(const player.PlayerEvent.updatePlayingStatus(isPlaying: true));
    }
  }

  Future<void> pauseAudio() async {
    await playerController.pausePlayer();
    if (mounted) {
      context
          .read<player.PlayerBloc>()
          .add(const player.PlayerEvent.updatePlayingStatus(isPlaying: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<player.PlayerBloc, player.PlayerState>(
      listenWhen: (previous, current) =>
          previous.audioData.lengthInBytes != current.audioData.lengthInBytes &&
          current.audioData.lengthInBytes != 0,
      listener: (context, state) async {
        await playerController.preparePlayer(
          path: context.read<player.PlayerBloc>().state.localFilePath,
          shouldExtractWaveform: true,
        );
      },
      bloc: BlocProvider.of<player.PlayerBloc>(context),
      buildWhen: (previous, current) => previous.isPlaying != current.isPlaying,
      builder: (context, state) {
        return OutlineGradientButton(
          padding: const EdgeInsets.only(
            left: 1,
            top: 1,
            right: 1,
            bottom: 1,
          ),
          strokeWidth: 1,
          gradient: Constants.gradient(context: context),
          corners: _corners,
          child: Container(
            height: 44,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(
                22,
              ),
              boxShadow: _buttonShadow(context: context),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: state.isPlaying
                      ? const Icon(Icons.pause)
                      : const Icon(Icons.play_arrow),
                  onPressed: () => playAudio(),
                ),
                Expanded(
                  child: AudioFileWaveforms(
                    size: Size(MediaQuery.of(context).size.width / 2, 100.0),
                    playerController: playerController,
                    playerWaveStyle: PlayerWaveStyle(
                      fixedWaveColor: Theme.of(context).colorScheme.background,
                      liveWaveColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      waveCap: StrokeCap.butt,
                      spacing: 3,
                      scrollScale: 1,
                      waveThickness: 1,
                    ),
                    waveformType: WaveformType.fitWidth,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<BoxShadow> _buttonShadow({required BuildContext context}) => [
      BoxShadow(
        color: Theme.of(context).colorScheme.inversePrimary,
        spreadRadius: 3,
        blurRadius: 3,
        offset: const Offset(
          0,
          0,
        ),
      ),
    ];

Corners get _corners => const Corners(
      topLeft: Radius.circular(22),
      topRight: Radius.circular(22),
      bottomLeft: Radius.circular(22),
      bottomRight: Radius.circular(22),
    );
