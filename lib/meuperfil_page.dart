import 'package:flutter/material.dart';
import 'package:home_cam_entrega/menu_drawer.dart';

class MeuPerfil extends StatefulWidget {
  const MeuPerfil({super.key});

  @override
  State<MeuPerfil> createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
  bool isNotificationsEnabled = true;
  bool isSiteModeLight = true;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                const ClipOval(
                  child: Icon(
                    Icons.account_circle,
                    size: 150,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Nome',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Meu Perfil',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Text('Mudar Senha'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Text('E-mail: "E-mail"'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10),
                          Text('Data de Nascimento: "Dia/Mês/Ano"'),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Preferências',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          const Text('Notificações'),
                          Checkbox(
                            value: isNotificationsEnabled,
                            onChanged: (bool? value) {
                              setState(() {
                                isNotificationsEnabled = value!;
                              });
                            },
                          ),
                          const Text('Ligado'),
                          const SizedBox(width: 20),
                          Checkbox(
                            value: !isNotificationsEnabled,
                            onChanged: (bool? value) {
                              setState(() {
                                isNotificationsEnabled = !value!;
                              });
                            },
                          ),
                          const Text('Desligado'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          const Text('Modo do Site'),
                          Checkbox(
                            value: isSiteModeLight,
                            onChanged: (bool? value) {
                              setState(() {
                                isSiteModeLight = value!;
                              });
                            },
                          ),
                          const Text('Claro'),
                          const SizedBox(width: 20),
                          Checkbox(
                            value: !isSiteModeLight,
                            onChanged: (bool? value) {
                              setState(() {
                                isSiteModeLight = !value!;
                              });
                            },
                          ),
                          const Text('Escuro'),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Excluir Minha Conta',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Sair',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
