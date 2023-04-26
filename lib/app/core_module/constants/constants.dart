import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sons_memes/app/modules/home/submodules/lista_audios/domain/entities/audio.dart';

const bannerID = 'ca-app-pub-1898798427054986/3785290002';
const intersticialID = 'ca-app-pub-1898798427054986/7968981556';

const labelGeral = 'Sons de Memes';

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
    id: -39,
    name: 'Va pa uma porra',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/va-uma-puma.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -38,
    name: 'Vai ti lasca',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/tiringa-responde-aos-fas.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -37,
    name: 'Me essa peste',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/me-essa-peste.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -36,
    name: 'Inscreve e mete o dedo',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/inscreve.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -35,
    name: 'Eita peste',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/eita-peste.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -34,
    name: 'Ave maria',
    categoria: 'Tiringa',
    filePath: 'audios/tiringa/bobonica.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -33,
    name: 'Windows xp',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/windows-xp.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -32,
    name: 'What dog',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/what-dog-do.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -31,
    name: 'What are you doing',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/what-are-you-doing-in-my-swamp-.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -30,
    name: 'Vamo usa droga desgraça',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/vamos-usar-droga-desgraca.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -29,
    name: 'Uuur minecraft',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/uuur.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -28,
    name: 'HAHAHAHAH',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/risada-americana.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -27,
    name: 'Error',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/error.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -26,
    name: 'Emotional damage',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/emotional-damage-meme.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -25,
    name: 'EA Sports...',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/ea.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -24,
    name: 'Boom',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/boom.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -23,
    name: 'Baby do biruleibe',
    categoria: 'Aleatório',
    filePath: 'audios/aleatorio/baby-baby-do-baby-do-biruleibe-leibe.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -22,
    name: 'Bora muie do bill',
    categoria: 'Bill',
    filePath: 'audios/bil/bora-mulher-do-bill.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -21,
    name: 'Bora mae do bill',
    categoria: 'Bill',
    filePath: 'audios/bil/bora-mae-do-bill.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -20,
    name: 'Bora fi do bill',
    categoria: 'Bill',
    filePath: 'audios/bil/bora-filho-do-bill.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -19,
    name: 'Bora bill!!',
    categoria: 'Bill',
    filePath: 'audios/bil/bora-bill.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -18,
    name: 'Vou te comer',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/vou-te-comer_2.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -17,
    name: 'Soco',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/soco.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -16,
    name: 'Saiyan 3',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/sayjin-3.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -15,
    name: 'Mas que porra',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/mas-que-porra.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -14,
    name: 'É mais de 8000',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/maisde8000.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -13,
    name: 'Kamehameha',
    categoria: 'Dragon Ball',
    filePath: 'audios/dragon-ball/goku-kamehameha-br.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -12,
    name: 'O miseravel é um gênio',
    categoria: 'Dragon Ball',
    filePath: 'audios/leo_stronda/e-um-genio.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -11,
    name: 'Vem monstro 2',
    categoria: 'Leo Stronda',
    filePath: 'audios/leo_stronda/vem-monstro.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -10,
    name: 'Vem monstro',
    categoria: 'Leo Stronda',
    filePath: 'audios/leo_stronda/vem-monstro-2.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -9,
    name: 'Vem com calma',
    categoria: 'Leo Stronda',
    filePath: 'audios/leo_stronda/vem-com-calma.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -8,
    name: 'Ta ficando feio',
    categoria: 'Leo Stronda',
    filePath: 'audios/leo_stronda/ta-ficando-feio.mp3',
    buttonColor: randomColor(),
    assets: true,
    favorito: false,
  ),
  Audio(
    id: -7,
    name: 'Porra',
    categoria: 'Leo Stronda',
    filePath: 'audios/leo_stronda/porra-leo-stronda.mp3',
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
