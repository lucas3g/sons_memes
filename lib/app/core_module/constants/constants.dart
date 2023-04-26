import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/domain/entities/audio.dart';

const bannerID = 'ca-app-pub-1898798427054986/3785290002';
const intersticialID = 'ca-app-pub-1898798427054986/7968981556';

const labelGeral = 'Sons de Memes 2023';

Color randomColor() {
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.indigo,
    Colors.lime,
    Colors.orange,
    Colors.teal,
  ];

  return colors[math.Random().nextInt(colors.length)];
}

final List<Audio> listAudios = [
  Audio(
    id: -12,
    name: 'Vai me mateire',
    categoria: 'Teste',
    filePath: 'audios/teste/vai-me-mateire.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -11,
    name: 'Tudo pelo estilo',
    categoria: 'Teste',
    filePath: 'audios/teste/tudo-pelo-estilo.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -10,
    name: 'Tecnisca de Multiplicassuium',
    categoria: 'Teste',
    filePath: 'audios/teste/tecnisca-de-multiplicassuium.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -9,
    name: 'Oskey',
    categoria: 'Teste',
    filePath: 'audios/teste/oskey.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -8,
    name: 'O prospio Naruaito',
    categoria: 'Teste',
    filePath: 'audios/teste/o-prospio-naruaito.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -7,
    name: 'Ai minha vuaida',
    categoria: 'Teste',
    filePath: 'audios/teste/ai-meu-deus-ai-minha-vuaida.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -6,
    name: 'Vai me mateire',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/vai-me-mateire.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -5,
    name: 'Tudo pelo estilo',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/tudo-pelo-estilo.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -4,
    name: 'Tecnisca de Multiplicassuium',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/tecnisca-de-multiplicassuium.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -3,
    name: 'Oskey',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/oskey.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -2,
    name: 'O prospio Naruaito',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/o-prospio-naruaito.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -1,
    name: 'Ai minha vuaida',
    categoria: 'Kuduro',
    filePath: 'audios/kuduro/ai-meu-deus-ai-minha-vuaida.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
];
