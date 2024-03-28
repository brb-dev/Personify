import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
                AppColor.gradient1,
                AppColor.gradient2,
                AppColor.gradient3,
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.gradient1,
      body: DefaultTabController(
        length: 6,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3 + 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColor.gradient1,
                        AppColor.gradient2,
                        AppColor.gradient3,
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
                      AppColor.gradient1,
                      AppColor.gradient2,
                      AppColor.gradient3,
                    ],
                  ),
                ),
                height: 16,
              ),
              _TabBarSection(),
              Container(
                color: AppColor.gradient1,
                height: 16,
              ),
              const Text('Small Quote of Speaker1'),
              const Expanded(
                child: TabBarView(
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
            ],
          ),
        ),
      ),
    );
  }
}
