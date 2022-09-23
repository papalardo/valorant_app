import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class AgentVoiceWidget extends StatefulWidget {
  const AgentVoiceWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<AgentVoiceWidget> createState() => _AgentVoiceWidgetState();
}

class _AgentVoiceWidgetState extends State<AgentVoiceWidget> {
  AudioPlayer audio = AudioPlayer(playerId: 'agent-voice');
  int audioPosition = 0;
  int audioDuration = 0;

  late StreamSubscription positionStream;
  late StreamSubscription durationStream;
  late StreamSubscription completedStream;

  @override
  void initState() {
    positionStream = audio.onPositionChanged.listen((event) {
      if (!mounted) return;
      setState(() {
        audioPosition = event.inMilliseconds;
      });
    });

    durationStream = audio.onDurationChanged.listen((event) {
      audioDuration = event.inMilliseconds;
    });

    completedStream = audio.onPlayerComplete.listen((event) {
      setState(() {
        audioPosition = 0;
        audioDuration = 0;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    positionStream.cancel();
    durationStream.cancel();
    completedStream.cancel();
  }

  double progress() {
    if (audioDuration == 0 || audioPosition == 0) return 0;
    return audioPosition / audioDuration;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        children: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.volume_up),
            onPressed: () {
              audio.play(UrlSource(widget.url));
            },
          )
              .backgroundColor(PaletteColors.dark)
              .center()
              .clipRRect(all: 999)
              .padding(all: 3),
          IgnorePointer(
            child: Center(
              child: CircularProgressIndicator(
                value: progress(),
                strokeWidth: 2,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
