import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
        child: Container(
          color: const Color(0xff49C0DC),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text("Bem Vindo, João!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Semantics(
                      label: "Botão",
                      child: buildCard(
                          'Instituições Online', 'assets/aten_online.png'),
                    ),
                    Semantics(
                      label: "Botão",
                      child: buildCard('Instituições Presenciais',
                          'assets/aten_presencial.png'),
                    ),
                    Semantics(
                      label: "Carrosel dos Eventos sobre Saúde Mental",
                      child: buildEventCarousel(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 15,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(0, 3),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildEventCarousel() {
    return Padding(
      padding: const EdgeInsets.all(10),
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
