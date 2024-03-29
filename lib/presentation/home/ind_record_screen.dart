import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../application/core/player/player_bloc.dart' as player;
import '../core/app_asset.dart';
import '../core/constants.dart';
import '../core/widgets/buttons/custom_icon_button.dart';
import '../core/widgets/buttons/outline_gradient_button.dart';
import '../core/widgets/custom_image_view.dart';

part 'widgets/transcript_section.dart';
part 'widgets/tab_bar_section.dart';
part 'widgets/ind_tab_section.dart';
part 'widgets/personality_score.dart';
part 'widgets/emotion_indicator.dart';
part 'widgets/highlight_section.dart';
part 'widgets/play_audio.dart';

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
              SliverToBoxAdapter(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.3 + 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: Constants.linearGradientColorSet1(
                            context: context,
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(child: _TranscriptSection()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: Constants.linearGradientColorSet1(context: context),
                  ),
                ),
                height: 16,
              ),
              _TabBarSection(),
              Container(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                height: 16,
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
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
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: CustomImageView(
          imagePath: AppAssets.mikeIcon,
          height: 80,
          width: 80,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
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
      ),
    );
  }

  void _onTappingBottomNav({required BuildContext context}) => showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.info(
          backgroundColor: Theme.of(context).colorScheme.scrim,
          message: 'It is not Implemented.',
          textStyle: Theme.of(context).textTheme.headlineLarge!,
        ),
      );
}
