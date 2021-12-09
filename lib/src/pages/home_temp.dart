import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  static const opciones = ['Uno', 'dos', 'Tres', 'Cuatro', 'Cinco'];

  const HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes Temp')),
      body: ListView(
          //children: _crearItems()
          children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWedget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWedget)
        ..add(const Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: const Text('Cual quier cosa'),
            leading: const Icon(Icons.account_box),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
