import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Text(Modular.args.data ?? ' Não vou enviado nenhuma categoria'),
      ),
    );
  }
}
