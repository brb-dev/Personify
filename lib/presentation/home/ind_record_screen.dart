import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

import '../core/app_asset.dart';
import '../core/theme/app_color.dart';
import '../core/widgets/buttons/custom_icon_button.dart';
import '../core/widgets/buttons/outline_gradient_button.dart';
import '../core/widgets/custom_image_view.dart';

part 'widgets/transcript_section.dart';
part 'widgets/tab_bar_section.dart';
part 'widgets/ind_tab_section.dart';
part 'widgets/personality_score.dart';
part 'widgets/emotion_indicator.dart';
part 'widgets/highlight_section.dart';

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
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Theme.of(context).colorScheme.scrim,
                Theme.of(context).colorScheme.shadow,
                Theme.of(context).colorScheme.surface,
              ],
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
                          colors: [
                            Theme.of(context).colorScheme.scrim,
                            Theme.of(context).colorScheme.shadow,
                            Theme.of(context).colorScheme.surface,
                          ],
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
                    colors: [
                      Theme.of(context).colorScheme.scrim,
                      Theme.of(context).colorScheme.shadow,
                      Theme.of(context).colorScheme.surface,
                    ],
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
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Theme.of(context).colorScheme.scrim,
            height: 40,
          ),
          CustomImageView(
            imagePath: AppAssets.mikeIcon,
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }
}
