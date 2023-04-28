import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sons_memes/app/core_module/components/widgets/button_audio_widget.dart';
import 'package:sons_memes/app/core_module/components/widgets/my_input_widget.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/audio_store.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/get_audios_store.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/states/audio_states.dart';
import 'package:sons_memes/app/theme/app_theme.dart';
import 'package:sons_memes/app/utils/formatters.dart';
import 'package:sons_memes/app/utils/my_snackbar.dart';

class ListaAudiosPage extends StatefulWidget {
  final AudioStore audioStore;
  final GetAudiosStore getAudiosStore;

  const ListaAudiosPage({
    Key? key,
    required this.audioStore,
    required this.getAudiosStore,
  }) : super(key: key);

  @override
  State<ListaAudiosPage> createState() => _ListaAudiosPageState();
}

class _ListaAudiosPageState extends State<ListaAudiosPage> {
  final fPesquisa = FocusNode();
  final cPesquisa = TextEditingController();

  Future getAudiosDB() async {
    await widget.getAudiosStore.getAllAudiosDB();
  }

  @override
  void initState() {
    super.initState();

    getAudiosDB();

    autorun((_) {
      if (widget.audioStore.state is ErrorAudioState) {
        MySnackBar(message: 'Erro ao tentar reproduzir audio.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filtro',
              style: AppTheme.textStyles.labelFiltro,
            ),
            const SizedBox(height: 5),
            MyInputWidget(
              focusNode: fPesquisa,
              hintText: 'Digite uma categoria ou título',
              textEditingController: cPesquisa,
              onChanged: (value) {
                widget.getAudiosStore.filtrarAudios(value!);
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Observer(builder: (context) {
                final state = widget.getAudiosStore.state;

                if (state is! GetSuccesAudioState) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }

                final categorias =
                    widget.getAudiosStore.getCategorias(state.filteredAudios);

                if (categorias.isEmpty) {
                  return Center(
                    child: Text(
                      'Nenhum som encontado :(',
                      style: AppTheme.textStyles.titleAppBar,
                      textAlign: TextAlign.center,
                    ),
                  );
                }

                return ListView.builder(
                    itemCount: categorias.length,
                    itemBuilder: (context, index) {
                      final categoria = categorias[index];

                      final audios = state.filteredAudios
                          .where((e) => e.categoria == categoria)
                          .toList();

                      late bool visibility = false;

                      if (index == 0 ||
                          categorias[index] != categorias[index - 1]) {
                        visibility = true;
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: visibility,
                            child: Text(
                              categoria.capitalize,
                              style: AppTheme.textStyles.titleLabelListaAudios,
                            ),
                          ),
                          const SizedBox(height: 10),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(bottom: 15),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.6,
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: audios.length,
                            itemBuilder: (context, indexGrid) {
                              final audio = audios[indexGrid];

                              return ButtonAudioWidget(
                                audio: audio,
                                audioStore: widget.audioStore,
                                index: indexGrid,
                              );
                            },
                          ),
                        ],
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
