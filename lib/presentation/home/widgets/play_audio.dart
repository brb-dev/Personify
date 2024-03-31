part of '../ind_record_screen.dart';

class _PlayAudio extends StatefulWidget {
  @override
  State<_PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<_PlayAudio> {
  late final PlayerController playerController;
  late final RecorderController recorderController;

  @override
  void initState() {
    playerController = PlayerController();
    _initiatePlayer();
    _initiateRecorder();
    super.initState();
  }

  void _initiateRecorder() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 16000;
  }

  void _initiatePlayer() {
    playerController.onCompletion.listen((event) {
      context
          .read<player.PlayerBloc>()
          .add(const player.PlayerEvent.updatePlayingStatus(isPlaying: false));
    });
  }

  @override
  void dispose() {
    playerController.dispose();
    recorderController.dispose();
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

  Future<void> _startRecording() async {
    final path = context.read<player.PlayerBloc>().state.localFilePath;
    await recorderController.record(
      path: path,
    );
    // update state here to, for eample, change the button's state
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<player.PlayerBloc, player.PlayerState>(
          listenWhen: (previous, current) =>
              previous.isRecording != current.isRecording,
          listener: (context, state) async {
            if (state.isRecording) {
              _startRecording();
            } else {
              final recordedPath = await recorderController.stop();
              if (context.mounted && recordedPath != null) {
                context.read<player.PlayerBloc>().add(
                      player.PlayerEvent.evaluateFileByteData(
                        path: recordedPath,
                      ),
                    );
              }
            }
          },
        ),
      ],
      child: BlocConsumer<player.PlayerBloc, player.PlayerState>(
        listenWhen: (previous, current) =>
            previous.audioData.lengthInBytes !=
                current.audioData.lengthInBytes &&
            current.audioData.lengthInBytes != 0,
        listener: (context, state) async {
          await playerController.preparePlayer(
            path: state.localFilePath,
            shouldExtractWaveform: true,
          );
        },
        buildWhen: (previous, current) =>
            previous.isPlaying != current.isPlaying ||
            previous.isRecording != current.isRecording ||
            previous.audioData.lengthInBytes != current.audioData.lengthInBytes,
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
                  state.isRecording || state.audioData.lengthInBytes == 0
                      ? const SizedBox.shrink()
                      : IconButton(
                          icon: state.isPlaying
                              ? const Icon(Icons.pause)
                              : const Icon(Icons.play_arrow),
                          onPressed: () async => playAudio(),
                        ),
                  !state.isRecording && state.audioData.lengthInBytes != 0
                      ? Expanded(
                          child: AudioFileWaveforms(
                            size: Size(
                                MediaQuery.of(context).size.width / 2, 100.0),
                            playerController: playerController,
                            playerWaveStyle: PlayerWaveStyle(
                              fixedWaveColor:
                                  Theme.of(context).colorScheme.background,
                              liveWaveColor:
                                  Theme.of(context).colorScheme.inversePrimary,
                              waveCap: StrokeCap.butt,
                              spacing: 2,
                              scrollScale: 1,
                              waveThickness: 1,
                            ),
                            waveformType: WaveformType.fitWidth,
                          ),
                        )
                      : !state.isRecording && state.audioData.lengthInBytes == 0
                          ? Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                              ),
                              child: const Text(
                                'Please record to see recordings.',
                                textAlign: TextAlign.center,
                              ),
                            )
                          : Expanded(
                              child: AudioWaveforms(
                                enableGesture: true,
                                size: Size(
                                    MediaQuery.of(context).size.width / 2, 50),
                                recorderController: recorderController,
                                waveStyle: const WaveStyle(
                                  extendWaveform: true,
                                  spacing: 2,
                                  waveThickness: 1,
                                  showMiddleLine: false,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: const Color(0xFF1E1B26),
                                ),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                padding: const EdgeInsets.only(left: 18),
                                shouldCalculateScrolledPosition: true,
                              ),
                            ),
                ],
              ),
            ),
          );
        },
      ),
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
