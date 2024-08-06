import '../models/ability_card.dart';

class AbilityCardRepository {

  static Map<int, AbilityCard> mapVoidwarden = {

    143: AbilityCard(number: 143, level: 'A', name: 'Dádiva Negra', initiative: 43, available: true),
    144: AbilityCard(number: 144, level: 'A', name: 'Apagar as Luzes', initiative: 49, available: true),
    145: AbilityCard(number: 145, level: 'A', name: 'Arranhão Perverso', initiative: 68, available: true),
    146: AbilityCard(number: 146, level: 'A', name: 'Sugestão', initiative: 23, available: true),
    147: AbilityCard(number: 147, level: 'A', name: 'Presente do Vazio', initiative: 89, available: true),
    148: AbilityCard(number: 148, level: 'A', name: 'Isca do Vazio', initiative: 67, available: true),
    149: AbilityCard(number: 149, level: 'B', name: 'Isca do Vazio', initiative: 67),
    150: AbilityCard(number: 150, level: 'B', name: 'Arranhão Perverso', initiative: 68),
    151: AbilityCard(number: 151, level: '1', name: 'Sinais do Vazio', initiative: 15),
    152: AbilityCard(number: 152, level: '1', name: 'Perto do Abismo', initiative: 72),
    153: AbilityCard(number: 153, level: '1', name: 'Presente do Vazio', initiative: 89),
    154: AbilityCard(number: 154, level: '1', name: 'Dádiva Negra', initiative: 43),
    155: AbilityCard(number: 155, level: '1', name: 'Congelar a Alma', initiative: 58),
    156: AbilityCard(number: 156, level: '1', name: 'Arranhão Perverso', initiative: 68),
    157: AbilityCard(number: 157, level: '1', name: 'Apagar as Luzes', initiative: 49),
    158: AbilityCard(number: 158, level: '1', name: 'Isca do Vazio', initiative: 67),
    159: AbilityCard(number: 159, level: '1', name: 'Garras da Ruína', initiative: 36),
    160: AbilityCard(number: 160, level: '1', name: 'Influência Mestre', initiative: 83),
    161: AbilityCard(number: 161, level: '1', name: 'Sugestão', initiative: 23),
    162: AbilityCard(number: 162, level: 'X', name: 'Frenesi Resignado', initiative: 26),
    163: AbilityCard(number: 163, level: 'X', name: 'Abraço Gélido', initiative: 71),
    164: AbilityCard(number: 164, level: 'X', name: 'Calor da Seiva', initiative: 59),
    165: AbilityCard(number: 165, level: '2', name: 'Dar e Receber', initiative: 21),
    166: AbilityCard(number: 166, level: '2', name: 'Frio de Doer', initiative: 86),
    167: AbilityCard(number: 167, level: '3', name: 'Desafiando o Destino', initiative: 13),
    168: AbilityCard(number: 168, level: '3', name: 'Presença Dominante', initiative: 75),
    169: AbilityCard(number: 169, level: '4', name: 'Instinto Selvagem', initiative: 51),
    170: AbilityCard(number: 170, level: '4', name: 'A Última Jornada', initiative: 38),
    172: AbilityCard(number: 172, level: '5', name: 'Posição Firme', initiative: 90),
    173: AbilityCard(number: 173, level: '6', name: 'Convicção Oscilante', initiative: 44),
    174: AbilityCard(number: 174, level: '6', name: 'Surto de Poder', initiative: 81),
    175: AbilityCard(number: 175, level: '7', name: 'Explosão de Ódio', initiative: 29),
    176: AbilityCard(number: 176, level: '7', name: 'Fome Espiritual', initiative: 68),
    177: AbilityCard(number: 177, level: '8', name: 'Caindo no Esquecimento', initiative: 11),
    178: AbilityCard(number: 178, level: '8', name: 'Vínculo Poderoso', initiative: 59),
    179: AbilityCard(number: 179, level: '9', name: 'Olho do Vazio', initiative: 19),
    180: AbilityCard(number: 180, level: '9', name: 'Possuído pelo Destino', initiative: 66)

  };

  static Map<int, AbilityCard> mapRedGuard = {

    216: AbilityCard(number: 216, level: 'A', name: 'Foice Flamejante', initiative: 63, available: true),
    217: AbilityCard(number: 217, level: 'A', name: 'Foice Cegante', initiative: 87, available: true),
    218: AbilityCard(number: 218, level: 'A', name: 'Punhaladas Giratórias', initiative: 38, available: true),
    219: AbilityCard(number: 219, level: 'A', name: 'Avanço Chocante', initiative: 14, available: true),
    220: AbilityCard(number: 220, level: 'A', name: 'Noite do Deserto', initiative: 90, available: true),
    221: AbilityCard(number: 221, level: 'A', name: 'Pontas de Escudo', initiative: 41, available: true),
    222: AbilityCard(number: 222, level: 'B', name: 'Noite do Deserto', initiative: 90),
    223: AbilityCard(number: 223, level: 'B', name: 'Foice Flamejante', initiative: 63),
    224: AbilityCard(number: 224, level: '1', name: 'Força Repentina', initiative: 16),
    225: AbilityCard(number: 225, level: '1', name: 'Areias Curativas', initiative: 32),
    226: AbilityCard(number: 226, level: '1', name: 'Pontas de Escudo', initiative: 41),
    227: AbilityCard(number: 227, level: '1', name: 'Foice Flamejante', initiative: 63),
    228: AbilityCard(number: 228, level: '1', name: 'Foice Cegante', initiative: 87),
    229: AbilityCard(number: 229, level: '1', name: 'Punhaladas Giratórias', initiative: 38),
    230: AbilityCard(number: 230, level: '1', name: 'Mortalha de Chamas', initiative: 6),
    231: AbilityCard(number: 231, level: '1', name: 'Avanço Chocante', initiative: 14),
    232: AbilityCard(number: 232, level: '1', name: 'Escudo do Deserto', initiative: 10),
    233: AbilityCard(number: 233, level: '1', name: 'Noite do Deserto', initiative: 90),
    234: AbilityCard(number: 234, level: 'X', name: 'Guerreiro do Sol', initiative: 13),
    235: AbilityCard(number: 235, level: 'X', name: 'Dança da Espada', initiative: 29),
    236: AbilityCard(number: 236, level: 'X', name: 'Golpe de Precisão', initiative: 40),
    237: AbilityCard(number: 237, level: '2', name: 'Foice de Colheita', initiative: 52),
    238: AbilityCard(number: 238, level: '2', name: 'Instintos Bárbaros', initiative: 12),
    239: AbilityCard(number: 239, level: '3', name: 'Calor do Sol', initiative: 23),
    240: AbilityCard(number: 240, level: '3', name: 'Corrente Estranguladora', initiative: 19),
    241: AbilityCard(number: 241, level: '4', name: 'Foice Radiante', initiative: 79),
    242: AbilityCard(number: 242, level: '4', name: 'Queimar a Escuridão', initiative: 31),
    244: AbilityCard(number: 244, level: '5', name: 'Demônio da Areia', initiative: 55),
    245: AbilityCard(number: 245, level: '6', name: 'Brilho Feroz', initiative: 22),
    246: AbilityCard(number: 246, level: '6', name: 'Foice Voadora', initiative: 91),
    247: AbilityCard(number: 247, level: '7', name: 'Balé Feroz', initiative: 28),
    248: AbilityCard(number: 248, level: '7', name: 'Chifres da Besta', initiative: 8),
    249: AbilityCard(number: 249, level: '8', name: 'Foice Prismática', initiative: 70),
    250: AbilityCard(number: 250, level: '8', name: 'Sem Medo', initiative: 1),
    251: AbilityCard(number: 251, level: '9', name: 'Escudo Ascendente', initiative: 11),
    252: AbilityCard(number: 252, level: '9', name: 'Fúria Honrosa', initiative: 89)

  };

  static Map<int, AbilityCard> mapHatchet = {

    2: AbilityCard(number: 2, level: 'A', name: 'Poder de Parada', initiative: 35, available: true),
    3: AbilityCard(number: 3, level: 'A', name: 'Arremesso Duplo', initiative: 64, available: true),
    4: AbilityCard(number: 4, level: 'A', name: 'Barragem Desorientadora', initiative: 51, available: true),
    5: AbilityCard(number: 5, level: 'A', name: 'Segundo Fôlego', initiative: 18, available: true),
    6: AbilityCard(number: 6, level: 'A', name: 'Massa Central', initiative: 24, available: true),
    7: AbilityCard(number: 7, level: 'A', name: 'Cortes Próximos', initiative: 25, available: true),
    8: AbilityCard(number: 8, level: 'B', name: 'Massa Central', initiative: 24),
    9: AbilityCard(number: 9, level: 'B', name: 'Cortes Próximos', initiative: 25),
    10: AbilityCard(number: 10, level: '1', name: 'O Favorito', initiative: 17),
    11: AbilityCard(number: 11, level: '1', name: 'Recuperação', initiative: 11),
    12: AbilityCard(number: 12, level: '1', name: 'Cortes Próximos', initiative: 25),
    13: AbilityCard(number: 13, level: '1', name: 'Massa Central', initiative: 24),
    14: AbilityCard(number: 14, level: '1', name: 'Poder de Parada', initiative: 35),
    15: AbilityCard(number: 15, level: '1', name: 'Arremesso Duplo', initiative: 64),
    16: AbilityCard(number: 16, level: '1', name: 'Barragem Desorientadora', initiative: 51),
    17: AbilityCard(number: 17, level: '1', name: 'Arremesso Poderoso', initiative: 60),
    18: AbilityCard(number: 18, level: '1', name: 'Seguir Adiante', initiative: 39),
    19: AbilityCard(number: 19, level: '1', name: 'Segundo Fôlego', initiative: 18),
    20: AbilityCard(number: 20, level: 'X', name: 'Pacote de Ajuda', initiative: 30),
    21: AbilityCard(number: 21, level: 'X', name: 'Levantada Extra', initiative: 21),
    22: AbilityCard(number: 22, level: 'X', name: 'Chapéu Chique', initiative: 12),
    23: AbilityCard(number: 23, level: '2', name: 'Tiro Repetido', initiative: 31),
    24: AbilityCard(number: 24, level: '2', name: 'Ricochete', initiative: 56),
    25: AbilityCard(number: 25, level: '3', name: 'Eficiência Assustadora', initiative: 58),
    26: AbilityCard(number: 26, level: '3', name: 'Lâminas Afiadas', initiative: 44),
    27: AbilityCard(number: 27, level: '4', name: 'Rasgado da Carne', initiative: 20),
    28: AbilityCard(number: 28, level: '4', name: 'Vigilância', initiative: 40),
    30: AbilityCard(number: 30, level: '5', name: 'O Novo Favorito', initiative: 15),
    31: AbilityCard(number: 31, level: '6', name: 'Bombardeamento', initiative: 54),
    32: AbilityCard(number: 32, level: '6', name: 'Reviravolta Rápida', initiative: 11),
    33: AbilityCard(number: 33, level: '7', name: 'Força Excessiva', initiative: 47),
    34: AbilityCard(number: 34, level: '7', name: 'Brutalizar', initiative: 22),
    35: AbilityCard(number: 35, level: '8', name: 'Estilhaços', initiative: 37),
    36: AbilityCard(number: 36, level: '8', name: 'Camaradagem', initiative: 75),
    37: AbilityCard(number: 37, level: '9', name: 'Machado do Carrasco', initiative: 79),
    38: AbilityCard(number: 38, level: '9', name: 'Buscador de Coração', initiative: 32)

  };

  static Map<int, AbilityCard> mapDemolitionist = {

    74: AbilityCard(number: 74, level: 'A', name: 'Implodir', initiative: 88, available: true),
    75: AbilityCard(number: 75, level: 'A', name: 'Derrubar o Suporte', initiative: 20, available: true),
    76: AbilityCard(number: 76, level: 'A', name: 'Soco Pistão', initiative: 42, available: true),
    77: AbilityCard(number: 77, level: 'A', name: 'Blitz Explosiva', initiative: 19, available: true),
    78: AbilityCard(number: 78, level: 'A', name: 'O Grandão', initiative: 37, available: true),
    79: AbilityCard(number: 79, level: 'A', name: 'Soco Um-Dois', initiative: 66, available: true),
    80: AbilityCard(number: 80, level: 'B', name: 'O Grandão', initiative: 37),
    81: AbilityCard(number: 81, level: 'B', name: 'Soco Um-Dois', initiative: 66),
    82: AbilityCard(number: 82, level: '1', name: 'Corda', initiative: 77),
    83: AbilityCard(number: 83, level: '1', name: 'Peso Esmagador', initiative: 22),
    84: AbilityCard(number: 84, level: '1', name: 'Derrubar o Suporte', initiative: 20),
    85: AbilityCard(number: 85, level: '1', name: 'Explodir', initiative: 28),
    86: AbilityCard(number: 86, level: '1', name: 'Implodir', initiative: 88),
    87: AbilityCard(number: 87, level: '1', name: 'Soco Pistão', initiative: 42),
    88: AbilityCard(number: 88, level: '1', name: 'Blitz Explosiva', initiative: 19),
    89: AbilityCard(number: 89, level: '1', name: 'O Grandão', initiative: 37),
    90: AbilityCard(number: 90, level: '1', name: 'Soco Um-Dois', initiative: 66),
    91: AbilityCard(number: 91, level: 'X', name: 'Destroços', initiative: 55),
    92: AbilityCard(number: 92, level: 'X', name: 'Nível', initiative: 61),
    93: AbilityCard(number: 93, level: 'X', name: 'Avanço Arremessado', initiative: 52),
    94: AbilityCard(number: 94, level: '2', name: 'Melhoria Robótica', initiative: 33),
    95: AbilityCard(number: 95, level: '2', name: 'Protocolo de Colisão', initiative: 74),
    96: AbilityCard(number: 96, level: '3', name: 'Bombas de Fogo', initiative: 24),
    97: AbilityCard(number: 97, level: '3', name: 'Sem Escapatória', initiative: 39),
    98: AbilityCard(number: 98, level: '4', name: 'Detonação Remota', initiative: 63),
    99: AbilityCard(number: 99, level: '4', name: 'Combustível Extra', initiative: 17),
    101: AbilityCard(number: 101, level: '5', name: 'Armadura Mecânica', initiative: 80),
    102: AbilityCard(number: 102, level: '6', name: 'Nuvem de Poeira', initiative: 15),
    103: AbilityCard(number: 103, level: '6', name: 'Punho Perfurante', initiative: 62),
    104: AbilityCard(number: 104, level: '7', name: 'Micro Mísseis', initiative: 16),
    105: AbilityCard(number: 105, level: '7', name: 'Insulto e Injúria', initiative: 64),
    106: AbilityCard(number: 106, level: '8', name: 'Soco no Estômago', initiative: 26),
    107: AbilityCard(number: 107, level: '8', name: 'O Maior', initiative: 31),
    108: AbilityCard(number: 108, level: '9', name: 'Dano Colateral', initiative: 15),
    109: AbilityCard(number: 109, level: '9', name: 'Destruição a Rodo', initiative: 34)

  };

  static AbilityCard? getAbilityCard(String character, int number) {
    AbilityCard? abilityCard;

    if (character == 'voidwarden') {
      abilityCard = mapVoidwarden[number];
    } else if (character == 'redGuard') {
      abilityCard = mapRedGuard[number];
    } else if (character == 'hatchet') {
      abilityCard = mapHatchet[number];
    } else if (character == 'demolitionist') {
      abilityCard = mapDemolitionist[number];
    }

    return abilityCard;
  }

}