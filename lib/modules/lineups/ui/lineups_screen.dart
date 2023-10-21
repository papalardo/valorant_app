import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/lineups/infra/models/lineup_model.dart';
import 'package:valorant_app/modules/lineups/ui/bloc/lineups_bloc.dart';
import 'package:valorant_app/modules/weapons/ui/widgets/video_player.dart';
import 'package:valorant_app/utils/constants.dart';
import 'package:valorant_app/utils/palette_colors.dart';
import 'package:valorant_app/utils/widgets/safe_area_custom_scroll_view.dart';

import 'widgets/dropdown_widget.dart';
import 'widgets/pill_widget.dart';

class LineupsScreen extends StatefulWidget {
  const LineupsScreen({Key? key}) : super(key: key);

  @override
  State<LineupsScreen> createState() => _LineupsScreenState();
}

class _LineupsScreenState extends State<LineupsScreen> {
  LineupsBloc get bloc => Modular.get();

  @override
  void initState() {
    bloc.add(const FetchLineups());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LineupsBloc, LineupsState>(
      bloc: bloc,
      builder: (_, state) {
        return state.lineups.when(
          idle: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (lineups) => SafeAreaCustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: kScreenPaddingHorizontal),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      DropdownWidget(
                        label: 'Map',
                        value: state.filters.map,
                        items: const [
                          'all',
                          'ascent',
                          'bind',
                          'breeze',
                          'fracture',
                          'haven',
                          'icebox',
                          'pearl',
                          'split',
                        ],
                        onChanged: (v) {
                          bloc.add(UpdateFilter(state.filters.copyWith(map: v)));
                        },
                      ),
                      const SizedBox(height: 5),
                      DropdownWidget(
                        label: 'Side',
                        value: state.filters.side,
                        items: const [
                          'all',
                          'attack',
                          'defense',
                        ],
                        onChanged: (v) {
                          bloc.add(
                            UpdateFilter(state.filters.copyWith(side: v)),
                          );
                        },
                      ),
                      const SizedBox(height: 5),
                      DropdownWidget(
                        label: 'Agent',
                        value: state.filters.agent,
                        items: const [
                          'all',
                          'astra',
                          'breach',
                          'brimstone',
                          'chamber',
                          'cypher',
                          'fade',
                          'jett',
                          'kayo',
                          'killjoy',
                          'neon',
                          'omen',
                          'phoenix',
                          'raze',
                          'sage',
                          'skye',
                          'sove',
                          'viper',
                          'yoru',
                        ],
                        onChanged: (v) {
                          bloc.add(UpdateFilter(state.filters.copyWith(agent: v)));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: kScreenPaddingHorizontal),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 600,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate((_, index) {
                    var lineup = lineups[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [Center(child: Image.network(lineup.previewImageUrl))],
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 10,
                          children: [
                            PillWidget(lineup.attributes.agent),
                            PillWidget(lineup.attributes.map),
                            PillWidget(lineup.attributes.side),
                            PillWidget(lineup.attributes.ability),
                          ],
                        ),
                        Text(lineup.title),
                        Wrap(
                          spacing: 10,
                          children: [
                            Text("${lineup.viewsDisplay} views"),
                            Text("${lineup.score} likes"),
                          ],
                        )
                      ],
                    ).gestures(
                      onTap: () {
                        _openVideo(
                          context: context,
                          lineup: lineup,
                        );
                      },
                    );
                  }, childCount: lineups.length),
                ),
              ),
            ],
          ),
          error: (err) => Center(child: Text("$err")),
        );
      },
    );
  }

  void _openVideo({
    required BuildContext context,
    required LineupModel lineup,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: PaletteColors.dark,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: AppVideoPlayer(url: lineup.getVideoUrl()),
          ).clipRRect(all: 10),
        );
      },
    );
  }
}
