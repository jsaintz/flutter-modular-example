// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoryPage extends StatelessWidget {
  final String? category;
  const CategoryPage({Key? key, this.category}) : super(key: key);

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
