// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sons_memes/app/modules/home/submodules/lista_audios/domain/entities/audio.dart';
import 'package:sons_memes/app/utils/formatters.dart';

abstract class AudioStates {}

class InitialAudioState extends AudioStates {}

class PlayAudioState extends AudioStates {}

class FinishAudioState extends AudioStates {}

class StopAudioState extends AudioStates {}

class PauseAudioState extends AudioStates {}

class ErrorAudioState extends AudioStates {
  final String message;

  ErrorAudioState({
    required this.message,
  });
}

abstract class GetAudioStates {
  final List<Audio> audios;
  final String filtro;

  GetAudioStates({
    required this.audios,
    required this.filtro,
  });

  GetSuccesAudioState success({List<Audio>? audios, String? filtro}) {
    return GetSuccesAudioState(
      audios: audios ?? this.audios,
      filtro: filtro ?? this.filtro,
    );
  }

  GetLoadingAudioState loading() {
    return GetLoadingAudioState(
      audios: audios,
      filtro: filtro,
    );
  }

  GetErrorAudioState error(String message) {
    return GetErrorAudioState(
      message: message,
      audios: audios,
      filtro: filtro,
    );
  }

  List<Audio> get filteredAudios {
    if (filtro.isEmpty) {
      return audios;
    }

    return audios
        .where(
          (e) => (e.categoria
                  .toLowerCase()
                  .removeAcentos()
                  .contains(filtro.toLowerCase().removeAcentos()) ||
              e.name
                  .toLowerCase()
                  .removeAcentos()
                  .contains(filtro.toLowerCase().removeAcentos())),
        )
        .toList();
  }
}

class GetInitialAudioState extends GetAudioStates {
  GetInitialAudioState() : super(audios: [], filtro: '');
}

class GetLoadingAudioState extends GetAudioStates {
  GetLoadingAudioState({required super.audios, required super.filtro});
}

class GetSuccesAudioState extends GetAudioStates {
  GetSuccesAudioState({required super.audios, required super.filtro});
}

class GetErrorAudioState extends GetAudioStates {
  final String message;

  GetErrorAudioState({
    required this.message,
    required super.audios,
    required super.filtro,
  });
}
