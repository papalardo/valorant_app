import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_voice_media_model.dart';

part 'agent_voice_line_model.freezed.dart';
part 'agent_voice_line_model.g.dart';

@freezed
class AgentVoiceLineModel with _$AgentVoiceLineModel {
    const factory AgentVoiceLineModel({
        required final List<AgentVoiceMediaModel> mediaList,
    }) = _AgentVoiceLineModel;
    
      factory AgentVoiceLineModel.fromJson(Map<String, Object?> json)
      => _$AgentVoiceLineModelFromJson(json);
}