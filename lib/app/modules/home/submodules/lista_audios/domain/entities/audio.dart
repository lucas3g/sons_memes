// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/animation.dart';
import 'package:sons_memes/app/utils/formatters.dart';

class Audio {
  final int id;
  final String name;
  final String filePath;
  final String categoria;
  final Color buttonColor;
  final bool assets;
  final bool favorito;

  Audio({
    required this.id,
    required this.name,
    required this.filePath,
    required this.categoria,
    required this.buttonColor,
    required this.assets,
    required this.favorito,
  });

  static toEntity(dynamic map) {
    return Audio(
      id: int.parse(map['id'].toString()),
      name: map['title'],
      categoria: map['categoria'],
      filePath: map['path_file'],
      buttonColor: ConvertHexColor(map['button_color']),
      assets: int.parse(map['assets'].toString()) == 0 ? false : true,
      favorito: int.parse(map['favorito'].toString()) == 0 ? false : true,
    );
  }
}
