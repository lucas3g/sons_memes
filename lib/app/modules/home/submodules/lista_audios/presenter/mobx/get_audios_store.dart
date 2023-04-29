import 'package:mobx/mobx.dart';
import 'package:sons_memes/app/core_module/services/sqflite/adapters/filter_entity.dart';
import 'package:sons_memes/app/core_module/services/sqflite/adapters/sqflite_adapter.dart';
import 'package:sons_memes/app/core_module/services/sqflite/adapters/tables.dart';
import 'package:sons_memes/app/core_module/services/sqflite/sqflite_storage_interface.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/domain/entities/audio.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/states/audio_states.dart';

part 'get_audios_store.g.dart';

class GetAudiosStore = _GetAudiosStoreBase with _$GetAudiosStore;

abstract class _GetAudiosStoreBase with Store {
  final ISQLFliteStorage db;

  _GetAudiosStoreBase({
    required this.db,
  });

  @observable
  ObservableList<Audio> listAudios = ObservableList.of([]);

  @observable
  GetAudioStates _state = GetInitialAudioState();

  GetAudioStates get state => _state;

  emit(GetAudioStates state) {
    _state = state;
  }

  @action
  List<String> getCategorias(List<Audio> filteredAudios) {
    final Set<String> categorias = {};

    for (Audio audio in filteredAudios) {
      categorias.add(audio.categoria);
    }

    return categorias.toList();
  }

  @action
  Future getAllAudiosDB() async {
    try {
      emit(state.loading());

      const filter =
          FilterEntity(name: 'assets', value: 1, type: FilterType.equal);

      final params = SQLFliteGetPerFilterParam(
        table: Tables.meus_audios,
        filters: {filter},
      );

      final result = await db.getPerFilter(params);

      final List<Audio> list = List.from(result.map(Audio.toEntity).toList());

      list.sort((a, b) {
        final int compareCategoria = a.categoria.compareTo(b.categoria);

        if (compareCategoria != 0) {
          return compareCategoria;
        }

        return a.name.compareTo(b.name);
      });

      listAudios = ObservableList.of(list);

      emit(state.success(audios: listAudios));
    } catch (e) {
      emit(state.error(e.toString()));
    }
  }

  @action
  void filtrarAudios(String filtro) {
    emit(state.success(filtro: filtro));
  }
}
