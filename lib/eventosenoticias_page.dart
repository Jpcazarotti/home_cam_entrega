import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';
import 'package:home_cam_entrega/notificacoes_page.dart';

class EventosENoticias extends StatelessWidget {
  EventosENoticias({super.key});

  final List<String> eventImages = [
    'assets/Palestra.png',
    'assets/EventoSaúde.png',
    'assets/PasseataIdosos.png',
  ];

  final List<String> eventTitles = [
    'Palestra sobre Saúde Mental',
    'Evento de Conscientização',
    'Passeata dos Idosos',
  ];

  final List<String> eventTexts = [
    'A Secretaria de Saúde de Marília está no II Congresso Internacional de Saúde Mental na Unesp, recebendo autoridades no Caps Com-Viver. O evento busca promover práticas colaborativas na saúde mental, inspiradas na Escola Internacional Franca e Franco Basaglia.',
    'O Grupo de Trabalho de Saúde Mental em Pauta promoveu uma ação social em Marília, contando com apoio de diversas instituições locais e nacionais. A iniciativa incluiu atividades de conscientização, orientações sobre saúde mental, dança circular e cidadania, visando reduzir o impacto dos transtornos mentais e promover comunidades mais saudáveis e resilientes.',
    'A caminhada realizada na Avenida das Esmeraldas buscou fazer um alerta para os cuidados com a saúde mental da população, a partir da prevenção das doenças decorrentes do estresse,relações de poder autoritárias, preconceitos, estigmas sociais, rotinas e hábitos pouco saudáveis, incluindo os transtornos mentais mais.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 110,
              child: AppBar(
                title: Semantics(
                  label: "Logo do site Caminhos para um Amanhã Melhor",
                  child: Image.asset(
                    'assets/Projeto_logo.png',
                    height: 85,
                  ),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificacoesPage(),
                        ),
                      );
                    },
                    icon: Semantics(
                      label: "Botão para ver as suas notificações",
                      child: const Icon(Icons.notifications_none_rounded),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 18, 110, 131),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: const Center(
                child: Text(
                  "Eventos e Notícias da Área",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Semantics(
        label: "Botão para ir ao menu",
        child: const MenuDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  buildExpansionTile(
                    'Abordagens inovadoras de tratamento',
                    'Terapias inovadoras, como a terapia assistida por animais, terapia de arte e terapia de dança, estão sendo cada vez mais reconhecidas como complementares aos tratamentos tradicionais para uma variedade de condições de saúde mental.',
                  ),
                  buildExpansionTile(
                    'Ênfase na prevenção e intervenção precoce',
                    'Há uma crescente conscientização sobre a importância da prevenção e intervenção precoce em saúde mental. Programas de conscientização, triagem em massa e intervenções em estágios iniciais estão sendo promovidos para ajudar a reduzir o impacto de condições como ansiedade, depressão e estresse.',
                  ),
                  buildExpansionTile(
                    'Tecnologia e saúde mental',
                    'O uso de aplicativos móveis, plataformas online e dispositivos de rastreamento está se tornando mais comum no campo da saúde mental. Essas tecnologias podem ajudar na triagem, monitoramento e até mesmo na entrega de intervenções terapêuticas.',
                  ),
                  buildExpansionTile(
                    'Redução do estigma',
                    'Há um esforço contínuo para reduzir o estigma em torno das questões de saúde mental. Campanhas de conscientização, narrativas pessoais e educação pública estão ajudando a mudar percepções e criar ambientes mais compreensivos e inclusivos para aqueles que lidam com desafios de saúde mental.',
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Eventos Saúde Mental",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Marília-SP",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                buildEventCarousel(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEventCarousel() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: SizedBox(
        height: 470,
        child: PageView.builder(
          itemCount: eventImages.length,
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff49C0DC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset:
                          Offset(1, 2), // Deslocamento horizontal e vertical
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      Text(
                        eventTitles[index],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            eventImages[index],
                            width: double.infinity,
                            height: 210,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 8),
                        child: Center(
                          child: Text(
                            eventTexts[index],
                            style: const TextStyle(fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
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

  Widget buildExpansionTile(String title, String content) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              content,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
