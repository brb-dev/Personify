import 'dart:ui' as ui;

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personify/application/auth/auth_bloc.dart';
import 'package:personify/application/ind_record/ind_record_bloc.dart';
import 'package:personify/presentation/core/theme/app_color.dart';
import 'package:personify/presentation/core/widgets/loading_shimmer/loading_shimmer.dart';
import 'package:readmore/readmore.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../application/core/player/player_bloc.dart' as player;
import '../../domain/ind_record/entities/ind_record_entity.dart';
import '../core/app_asset.dart';
import '../core/constants.dart';
import '../core/widgets/buttons/custom_icon_button.dart';
import '../core/widgets/buttons/outline_gradient_button.dart';
import '../core/widgets/custom_image_view.dart';
import '../core/widgets/loading_widget.dart';

part 'widgets/transcript_section.dart';
part 'widgets/transcript_text_widget.dart';
part 'widgets/tab_bar_section.dart';
part 'widgets/ind_tab_section.dart';
part 'widgets/personality_score.dart';
part 'widgets/emotion_indicator.dart';
part 'widgets/highlight_section.dart';
part 'widgets/play_audio.dart';
part 'widgets/personality_score_result.dart';
part 'widgets/transcript_button.dart';

@RoutePage()
class IndRecordScreen extends StatelessWidget {
  const IndRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat about China'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: Constants.linearGradientColorSet1(context: context),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.scrim,
      body: DefaultTabController(
        length: 6,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverToBoxAdapter(
                child: _TranscriptSection(),
              ),
            ];
          },
          body: BlocConsumer<IndRecordBloc, IndRecordState>(
            listenWhen: (previous, current) =>
                previous.apiFailureOrSuccessOption !=
                current.apiFailureOrSuccessOption,
            listener: (context, state) {
              state.apiFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.error(
                        message: 'Error in fetching Speaker Data',
                      ),
                    );
                  },
                  (_) {},
                ),
              );
            },
            buildWhen: (previous, current) =>
                previous.isFetching != current.isFetching,
            builder: (context, state) {
              return state.isFetching
                  ? const LoadingWidget(
                      msg: 'Data is getting fetched',
                      icon: Icon(
                        Icons.person,
                      ),
                    )
                  : state.data != IndRecord.empty()
                      ? Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: Constants.linearGradientColorSet1(
                                      context: context),
                                ),
                              ),
                              height: 16,
                            ),
                            _TabBarSection(),
                            Container(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5),
                              height: 16,
                            ),
                            Expanded(
                              child: Container(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.5),
                                child: const TabBarView(
                                  children: [
                                    _IndTabSection(),
                                    _IndTabSection(),
                                    _IndTabSection(),
                                    _IndTabSection(),
                                    _IndTabSection(),
                                    _IndTabSection(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : const Center(
                          child: Text('No Data Present'),
                        );
            },
          ),
        ),
      ),
      floatingActionButton: _FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _BottomNav(),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<player.PlayerBloc, player.PlayerState>(
      buildWhen: (previous, current) =>
          previous.isRecording != current.isRecording,
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<player.PlayerBloc>().add(
                player.PlayerEvent.changeRecordingStatus(
                  status: !state.isRecording,
                ),
              ),
          child: CustomImageView(
            imagePath:
                state.isRecording ? AppAssets.stopIcon : AppAssets.mikeIcon,
            height: state.isRecording ? 38 : 80,
            width: state.isRecording ? 38 : 80,
          ),
        );
      },
    );
  }
}

class _BottomNav extends StatelessWidget {
  void _onTappingBottomNav({required BuildContext context}) => showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.info(
          backgroundColor: Theme.of(context).colorScheme.scrim,
          message: 'It is not Implemented.',
          textStyle: Theme.of(context).textTheme.headlineLarge!,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      color: Theme.of(context).colorScheme.scrim,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _onTappingBottomNav(context: context),
              child: Column(
                children: [
                  const Icon(Icons.note),
                  Text(
                    'Record',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onTappingBottomNav(context: context),
              child: Column(
                children: [
                  const Icon(Icons.insights),
                  Text(
                    'Insight',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
