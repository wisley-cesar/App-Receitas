import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../models/cost.dart';
import '../models/complexity.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hambúrgueres',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Leve & Saudável',
    color: Colors.indigo,
  ),
  Category(
    id: 'c6',
    title: 'Exótica',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Espaguete com Molho de Tomate',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de Sopa de Azeite',
      '1 Cebola',
      '250g de Espaguete',
      'Temperos',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva água e adicione sal quando estiver fervendo.',
      'Coloque o espaguete na água fervente - deve estar pronto em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça um pouco de azeite e adicione a cebola cortada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e outros temperos.',
      'O molho estará pronto quando o espaguete estiver.',
      'Sinta-se à vontade para adicionar um pouco de queijo no prato finalizado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Torrada Havaí',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um lado do pão branco.',
      'Coloque o presunto, o abacaxi e o queijo sobre o pão branco.',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer Clássico',
    cost: Cost.Fair,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de Carne Moída',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pães de Hambúrguer'
    ],
    steps: [
      'Forme 2 hambúrgueres.',
      'Frite os hambúrgueres por cerca de 4 minutos de cada lado.',
      'Frite rapidamente os pães por cerca de 1 minuto de cada lado.',
      'Passe ketchup nos pães.',
      'Sirva o hambúrguer com tomate, pepino e cebola.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    cost: Cost.Cheap,
    complexity: Complexity.Medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Filés de Vitela',
      '4 Ovos',
      '200g de Farinha de Rosca',
      '100g de Farinha',
      '300ml de Manteiga',
      '100g de Óleo Vegetal',
      'Sal',
      'Fatias de Limão'
    ],
    steps: [
      'Amasse a vitela até cerca de 2-4mm e salgue dos dois lados.',
      'Em um prato raso, bata os ovos brevemente com um garfo.',
      'Cubra levemente os filés com farinha, depois mergulhe no ovo e, finalmente, cubra com farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma frigideira grande (deixe a gordura ficar bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de sacudir a frigideira regularmente para que os schnitzels fiquem rodeados de óleo e a crosta fique “fofa”.',
      'Retire e escorra em papel toalha. Frite a salsa no óleo restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva decorado com salsa e fatias de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com Salmão Defumado',
    cost: Cost.Expanseive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface de Cordeiro',
      'Salsa',
      'Funcho',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre Balsâmico',
      'Azeite',
      'Sal e Pimenta'
    ],
    steps: [
      'Lave e corte a salada e as ervas.',
      'Corte o salmão em cubos.',
      'Misture a mostarda, vinagre e azeite para fazer um molho.',
      'Prepare a salada.',
      'Adicione os cubos de salmão e o molho.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Deliciosa Mousse de Laranja',
    cost: Cost.Cheap,
    complexity: Complexity.Difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Folhas de Gelatina',
      '150ml de Suco de Laranja',
      '80g de Açúcar',
      '300g de Iogurte',
      '200g de Creme de Leite',
      'Raspas de Laranja',
    ],
    steps: [
      'Dissolva a gelatina na panela.',
      'Adicione suco de laranja e açúcar.',
      'Retire a panela do fogo.',
      'Adicione 2 colheres de sopa de iogurte.',
      'Misture a gelatina com o restante do iogurte.',
      'Deixe esfriar na geladeira.',
      'Bata o creme de leite e incorpore à massa de laranja.',
      'Deixe esfriar novamente por pelo menos 4 horas.',
      'Sirva com raspas de laranja.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.Cheap,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 xícaras de Farinha de Trigo',
      '3 1/2 colheres de chá de Fermento em Pó',
      '1 colher de chá de Sal',
      '1 colher de sopa de Açúcar Branco',
      '1 1/4 xícaras de Leite',
      '1 Ovo',
      '3 colheres de sopa de Manteiga derretida',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha, o fermento, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma frigideira levemente untada com óleo em fogo médio-alto.',
      'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Doure dos dois lados e sirva quente.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Curry de Frango Indiano Cremoso',
    cost: Cost.Fair,
    complexity: Complexity.Medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 Dentes de Alho',
      '1 Pedaço de Gengibre',
      '4 colheres de sopa de Amêndoas',
      '1 colher de chá de Pimenta Caiena',
      '500ml de Leite de Coco',
    ],
    steps: [
      'Corte e frite os peitos de frango.',
      'Processe a cebola, alho e gengibre em uma pasta e refogue tudo.',
      'Adicione os temperos e frite.',
      'Adicione o peito de frango e 250ml de água e cozinhe tudo por 10 minutos.',
      'Adicione o leite de coco.',
      'Sirva com arroz.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Suflê de Chocolate',
    cost: Cost.Cheap,
    complexity: Complexity.Difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 colher de chá de manteiga derretida',
      '2 colheres de sopa de açúcar branco',
      '2 onças de chocolate amargo 70%, quebrado em pedaços',
      '1 colher de sopa de manteiga',
      '1 colher de sopa de farinha de trigo',
      '4 1/3 colheres de sopa de leite frio',
      '1 pitada de sal',
      '1 pitada de pimenta caiena',
      '1 gema de ovo grande',
      '2 claras de ovo grandes',
      '1 pitada de cremor de tártaro',
      '1 colher de sopa de açúcar branco',
    ],
    steps: [
      'Preaqueça o forno a 190°C. Forre uma assadeira com papel manteiga.',
      'Pincele o fundo e os lados de 2 ramequins levemente com 1 colher de chá de manteiga derretida; cubra o fundo e os lados até a borda.',
      'Adicione 1 colher de sopa de açúcar branco aos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe a farinha. Bata até que a farinha seja incorporada à manteiga e a mistura engrosse.',
      'Bata o leite frio até que a mistura fique lisa e engrosse. Transfira a mistura para a tigela com o chocolate derretido.',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture para combinar.',
      'Deixe a tigela sobre a água quente (não fervendo) para manter o chocolate aquecido enquanto você bate as claras.',
      'Coloque 2 claras de ovo em uma tigela de mistura; adicione cremor de tártaro. Bata até que a mistura comece a engrossar e um fio do batedor permaneça na superfície por cerca de 1 segundo antes de desaparecer.',
      'Adicione 1/3 do açúcar e bata. Bata um pouco mais de açúcar por cerca de 15 segundos.',
      'Bata o restante do açúcar. Continue batendo até que a mistura fique espessa como creme de barbear e forme picos suaves, 3 a 5 minutos.',
      'Transfira um pouco menos da metade das claras de ovo para o chocolate.',
      'Misture até que as claras de ovo estejam totalmente incorporadas ao chocolate.',
      'Adicione o restante das claras de ovo; dobre suavemente no chocolate com uma espátula, levantando do fundo e dobrando.',
      'Pare de misturar após o desaparecimento das claras. Divida a mistura entre os 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse no forno preaquecido até que os suflês estejam inchados e tenham subido acima do topo das bordas, 12 a 15 minutos.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Aspargos com Tomates Cereja',
    cost: Cost.Expanseive,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Aspargos Brancos e Verdes',
      '30g de Pinolis',
      '300g de Tomates Cereja',
      'Salada',
      'Sal, Pimenta e Azeite'
    ],
    steps: [
      'Lave, descasque e corte os aspargos.',
      'Cozinhe em água salgada.',
      'Tempere os aspargos com sal e pimenta.',
      'Torre os pinolis.',
      'Corte os tomates ao meio.',
      'Misture com os aspargos, salada e molho.',
      'Sirva com baguete.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
