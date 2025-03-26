import 'package:flutter/material.dart';

class InstituicoesOnlinePage extends StatelessWidget {
  const InstituicoesOnlinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instituições Online"),
        centerTitle: true,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset(
                  'assets/Projeto_logo.png',
                  fit: BoxFit.cover,
                  color: Colors.black87,
                ),
                title: const Text(
                  "CAM",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: const Text(
                  "Caminhos Para um Amanhã Melhor",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
