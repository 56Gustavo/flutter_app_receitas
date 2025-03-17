import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> receitas = [
    {
      'nome': 'Bolo de Chocolate',
      'descricao': 'Bolo macio e fofinho, com uma deliciosa cobertura de chocolate. Ideal para festas ou para aquele lanche especial.',
      'imagem': 'assets/bolo_chocolate.jpg',
      'ingredientes': 'Farinha de trigo, cacau em pó, ovos, leite, açúcar, fermento em pó, manteiga, chocolate meio amargo, açúcar de confeiteiro.',
      'modo_preparo': '1. Preaqueça o forno a 180°C. 2. Em uma tigela, misture a farinha, o cacau, o fermento e o açúcar. 3. Adicione os ovos, o leite e a manteiga derretida. Misture bem até obter uma massa homogênea. 4. Coloque a massa na forma untada e asse por 30 minutos. 5. Prepare a cobertura derretendo o chocolate e misturando com o açúcar de confeiteiro. Cubra o bolo com a mistura e sirva!',
    },
    {
      'nome': 'Pizza Margherita',
      'descricao': 'Pizza clássica italiana com molho de tomate, queijo mozzarella, manjericão fresco e um toque de azeite de oliva.',
      'imagem': 'assets/pizza_margherita.jpg',
      'ingredientes': 'Massa de pizza, molho de tomate, queijo mozzarella, manjericão fresco, azeite de oliva extra virgem.',
      'modo_preparo': '1. Abra a massa de pizza em uma superfície enfarinhada. 2. Adicione o molho de tomate e espalhe uniformemente. 3. Coloque o queijo mozzarella cortado em fatias e distribua o manjericão por cima. 4. Regue com azeite de oliva e leve ao forno preaquecido a 220°C por cerca de 15 minutos ou até dourar.',
    },
    {
      'nome': 'Lasanha à Bolonhesa',
      'descricao': 'Uma lasanha cremosa, com camadas de molho bolonhesa, queijo derretido e massa fresquinha. Perfeita para um jantar em família.',
      'imagem': 'assets/lasanha_bolonhesa.jpg',
      'ingredientes': 'Massa de lasanha, carne moída, molho de tomate, cebola, alho, queijo mussarela, queijo parmesão, azeite, sal e pimenta.',
      'modo_preparo': '1. Cozinhe a massa de lasanha conforme as instruções da embalagem. 2. Prepare o molho bolonhesa: refogue a cebola e o alho no azeite, adicione a carne moída e cozinhe até dourar. Adicione o molho de tomate e tempere com sal e pimenta. 3. Em uma travessa, alterne camadas de massa, molho bolonhesa e queijo. Finalize com queijo parmesão. 4. Asse a lasanha a 180°C por 30 minutos ou até dourar.',
    },
    {
      'nome': 'Pão de Queijo',
      'descricao': 'Os tradicionais pãezinhos de queijo, crocantes por fora e macios por dentro. Perfeitos para um lanche rápido ou café da manhã.',
      'imagem': 'assets/pao_de_queijo.jpg',
      'ingredientes': 'Polvilho doce, queijo minas, queijo parmesão, ovos, leite, óleo.',
      'modo_preparo': '1. Misture todos os ingredientes em uma tigela até formar uma massa homogênea. 2. Modele bolinhas e coloque em uma assadeira untada. 3. Asse a 180°C por cerca de 25 minutos ou até dourar. Sirva quente!',
    },
    {
      'nome': 'Strogonoff de Frango',
      'descricao': 'Frango suculento em um molho cremoso à base de creme de leite, ketchup e mostarda. Perfeito para um almoço rápido e delicioso.',
      'imagem': 'assets/strogonoff_frango.jpg',
      'ingredientes': 'Peito de frango, creme de leite, ketchup, mostarda, cebola, alho, arroz branco, batata palha.',
      'modo_preparo': '1. Corte o peito de frango em cubos e refogue com alho e cebola até dourar. 2. Adicione o ketchup e a mostarda, misture bem e deixe cozinhar por 5 minutos. 3. Adicione o creme de leite e mexa até obter um molho cremoso. 4. Sirva com arroz branco e batata palha.',
    },
    {
      'nome': 'Sopa de Abóbora',
      'descricao': 'Uma sopa leve e cremosa, com o sabor doce da abóbora e um toque de creme de leite. Ideal para um jantar reconfortante.',
      'imagem': 'assets/sopa_abobora.jpg',
      'ingredientes': 'Abóbora, cebola, alho, creme de leite, sal, pimenta, azeite.',
      'modo_preparo': '1. Refogue a cebola e o alho no azeite até ficarem macios. 2. Adicione a abóbora picada e cubra com água. Cozinhe até a abóbora amolecer. 3. Bata a mistura no liquidificador até obter um creme liso. 4. Retorne a sopa à panela, adicione o creme de leite, sal e pimenta a gosto. Sirva quente.',
    },
    {
      'nome': 'Salada Caesar',
      'descricao': 'Uma salada fresca com alface crocante, peito de frango grelhado, croutons e um molho cremoso Caesar. Perfeita para um almoço leve e saudável.',
      'imagem': 'assets/salada_caesar.jpg',
      'ingredientes': 'Alface romana, peito de frango, croutons, queijo parmesão, molho Caesar (maionese, mostarda, molho inglês, alho, azeite, limão).',
      'modo_preparo': '1. Grelhe o peito de frango e corte em tiras. 2. Lave e rasgue as folhas de alface. 3. Prepare o molho Caesar misturando todos os ingredientes até obter uma mistura cremosa. 4. Monte a salada, colocando a alface, o frango, os croutons e o queijo parmesão. Regue com o molho Caesar e sirva.',
    },
    {
      'nome': 'Hambúrguer Gourmet',
      'descricao': 'Hambúrguer artesanal com carne de alta qualidade, queijo derretido, alface, tomate e molho especial. Ideal para quem ama um bom hambúrguer.',
      'imagem': 'assets/hamburguer_gourmet.jpg',
      'ingredientes': 'Carne moída (padrão de 20% de gordura), pão de hambúrguer, queijo cheddar, alface, tomate, molho barbecue, maionese.',
      'modo_preparo': '1. Modele os hambúrgueres com a carne moída e grelhe até o ponto desejado. 2. Toste os pães na frigideira ou no forno. 3. Monte o hambúrguer colocando a carne, o queijo, alface, tomate e os molhos. Sirva imediatamente.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 200).floor(); // Cálculo do número de colunas

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas Deliciosas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Número de colunas ajustado
            crossAxisSpacing: 16, // Espaçamento horizontal entre os cards
            mainAxisSpacing: 16, // Espaçamento vertical entre os cards
            childAspectRatio: 200 / 300, // Razão de aspecto para os cards
          ),
          itemCount: receitas.length,
          itemBuilder: (context, index) {
            final receita = receitas[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailScreen(receita: receita),
                  ),
                );
              },
              child: SizedBox(
                width: 200, // Largura fixa do card
                height: 300, // Altura fixa do card
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          receita['imagem']!,
                          width: double.infinity,
                          height: 150, // Mantém a altura das imagens proporcional
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              receita['nome']!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              receita['descricao']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final Map<String, String> receita;

  RecipeDetailScreen({required this.receita});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receita['nome']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                receita['imagem']!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              receita['nome']!,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Descrição: \n\n${receita['descricao']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Ingredientes: \n\n${receita['ingredientes']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Modo de Preparo: \n\n${receita['modo_preparo']}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
