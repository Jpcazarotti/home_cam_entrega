import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class NoticiasAtualizacoes extends StatelessWidget {
  const NoticiasAtualizacoes({super.key});

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
              ),
              child: const Center(
                child: Text(
                  "Notícias & Atualizações",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
