import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_voice_media_model.freezed.dart';
part 'agent_voice_media_model.g.dart';

@freezed
class AgentVoiceMediaModel with _$AgentVoiceMediaModel {
    const factory AgentVoiceMediaModel({
        required final String wave,
    }) = _AgentVoiceMediaModel;
    
      factory AgentVoiceMediaModel.fromJson(Map<String, Object?> json)
      => _$AgentVoiceMediaModelFromJson(json);
}