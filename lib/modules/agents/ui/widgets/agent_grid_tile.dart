import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/modules/agents/infra/models/agent_model.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class AgentGridTile extends StatelessWidget {
  final AgentModel agent;

  const AgentGridTile({
    Key? key,
    required this.agent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[6],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              color: PaletteColors.black,
              child: CachedNetworkImage(
                imageUrl: agent.fullPortrait,
                fit: BoxFit.cover,
                alignment: FractionalOffset.topCenter,
              ),
            ),
          ),
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.8, 1],
                  colors: [
                    Colors.transparent,
                    Color(0xFF231215).withOpacity(0.4),
                    Color(0xFF231215),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    agent.displayName.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6,
                  )
                      .textColor(Colors.white)
                      .textAlignment(TextAlign.center)
                      .bold()
                      .fontSize(30)
                      .letterSpacing(2),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          )
        ],
      ).gestures(
        onTap: () {
          Modular.to.pushNamed("/agents/${agent.uuid}", arguments: {
            'agent': agent,
          });
        },
      ).clipRRect(all: 15),
    );
  }
}
