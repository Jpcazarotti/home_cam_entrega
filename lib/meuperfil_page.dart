import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class MeuPerfil extends StatefulWidget {
  const MeuPerfil({super.key});

  @override
  State<MeuPerfil> createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
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
    );
  }
}
