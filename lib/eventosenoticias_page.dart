import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class EventosENoticias extends StatelessWidget {
  EventosENoticias({super.key});

  final List<String> eventImages = [
    'assets/Palestra.png',
    'assets/EventoSaúde.png',
    'assets/PasseataIdosos.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
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
              onPressed: () {},
              icon: Semantics(
                label: "Botão para ver as suas notificações",
                child: const Icon(Icons.notifications_none_rounded),
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
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ExpansionTile(
                    title: Text(
                      'Abordagens inovadoras de tratamento',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            'Terapias inovadoras, como a terapia assistida por animais, terapia de arte e terapia de dança, estão sendo cada vez mais reconhecidas como complementares aos tratamentos tradicionais para uma variedade de condições de saúde mental.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      'Ênfase na prevenção e intervenção precoce',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            'Há uma crescente conscientização sobre a importância da prevenção e intervenção precoce em saúde mental. Programas de conscientização, triagem em massa e intervenções em estágios iniciais estão sendo promovidos para ajudar a reduzir o impacto de condições como ansiedade, depressão e estresse.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      'Tecnologia e saúde mental',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            'O uso de aplicativos móveis, plataformas online e dispositivos de rastreamento está se tornando mais comum no campo da saúde mental. Essas tecnologias podem ajudar na triagem, monitoramento e até mesmo na entrega de intervenções terapêuticas.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      'Redução do estigma',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            'Há um esforço contínuo para reduzir o estigma em torno das questões de saúde mental. Campanhas de conscientização, narrativas pessoais e educação pública estão ajudando a mudar percepções e criar ambientes mais compreensivos e inclusivos para aqueles que lidam com desafios de saúde mental.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff49C0DC),
              ),
              child: Column(
                children: [
                  const Text(
                    "Eventos Saúde Mental",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "Marília-SP",
                    style: TextStyle(fontSize: 15),
                  ),
                  buildEventCarousel(),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "A Secretaria de Saúde de Marília está no II Congresso Internacional de Saúde Mental na Unesp, recebendo autoridades no Caps Com-Viver. O evento busca promover práticas colaborativas na saúde mental, inspiradas na Escola Internacional Franca e Franco Basaglia.",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEventCarousel() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      child: SizedBox(
        height: 250,
        child: PageView.builder(
          itemCount: eventImages.length,
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(eventImages[index],
                      width: double.infinity, fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
