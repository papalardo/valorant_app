import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/modules/agents/ui/widgets/agent_voice_widget.dart';
import 'package:valorant_app/utils/clips/trapeze_clip.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class AgentScreenHeaderWidget extends StatelessWidget {
  const AgentScreenHeaderWidget({
    Key? key,
    required this.agent,
  }) : super(key: key);

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      var height = MediaQuery.of(context).size.height;
      var width = MediaQuery.of(context).size.width;
      bool isLandscape = width > height;
      return AspectRatio(
        aspectRatio: isLandscape ? 2.5 : 1.1,
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: ClipPath(
                    clipper: TrapezeClip(slope: isLandscape ? 0.2 : 0.45),
                    child: Container(
                      width: width * (isLandscape ? 0.55 : 0.65),
                      color: PaletteColors.primary,
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: agent.backgroundImage,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: agent.fullPortrait,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AgentVoiceWidget(
                      url: agent.voiceLine.mediaList.first.wave,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(agent.displayName)
                      .fontFamily('Valorant')
                      .fontSize(isLandscape ? (height * 0.05) : (width * 0.08))
                      .textColor(Colors.white),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
