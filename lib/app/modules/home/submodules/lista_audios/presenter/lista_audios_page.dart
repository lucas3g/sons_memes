import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:sons_memes/app/core_module/components/widgets/button_audio_widget.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/audio_store.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/get_audios_store.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/presenter/mobx/states/audio_states.dart';
import 'package:sons_memes/app/theme/app_theme.dart';
import 'package:sons_memes/app/utils/constants.dart';
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
        child: Observer(builder: (context) {
          final state = widget.getAudiosStore.state;

          if (state is GetLoadingAudioState) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }

          final audios = widget.getAudiosStore.listAudios;

          return ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                late bool visibility = false;

                if (index == 0 ||
                    audios[index].categoria != audios[index - 1].categoria) {
                  visibility = true;
                }

                return Expanded(
                  child: Column(
                    children: [
                      Visibility(
                        visible: visibility,
                        child: Text(
                          audios[index].categoria.capitalize,
                          style: AppTheme.textStyles.titleEstoque,
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight,
                        child: GridView.builder(
                          padding: const EdgeInsets.only(bottom: 15),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.6,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: audios.length,
                          itemBuilder: (context, index) {
                            final audio = audios[index];

                            return ButtonAudioWidget(
                              audio: audio,
                              audioStore: widget.audioStore,
                              index: index,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}
