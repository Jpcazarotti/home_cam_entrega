import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class SobreNos extends StatelessWidget {
  const SobreNos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
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
                    onPressed: () {},
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
                  "Sobre Nós",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Somos estudantes do SENAC",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    "Dedicados a reduzir a mortalidade por suicídio em Marília.",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'O Que Fazemos',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Oferecemos informações e recursos sobre saúde mental. Promovemos eventos de conscientização na comunidade.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Por Que Isso Importa',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Acreditamos que a saúde mental é essencial. Estamos aqui para ajudar e apoiar quem precisa.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Nossa Equipe',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: Text("Foto"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("João Pedro"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: Text("Foto"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Bruno Goia"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: Text("Foto"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Karol"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Junte-se a Nós',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Ajude-nos se puder a construir uma Marília mais saudável e resiliente.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 18, 110, 131),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 18),
                        ),
                        child: const Text(
                          'Saiba Mais',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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
}
