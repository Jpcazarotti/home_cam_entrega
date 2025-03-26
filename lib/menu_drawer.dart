import 'package:flutter/material.dart';
import 'package:home_cam_entrega/home_page.dart';
import 'package:home_cam_entrega/meuperfil_page.dart';
import 'package:home_cam_entrega/eventosenoticias_page.dart';
import 'package:home_cam_entrega/sobreNos_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff49C0DC),
            ),
            child: Image.asset(
              'assets/Projeto_logo.png',
              height: 85,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text("Meu Perfil"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MeuPerfil()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text("Eventos e Notícias da Área"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EventosENoticias()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Sobre Nós"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SobreNos()),
              );
            },
          ),
        ],
      ),
    );
  }
}
