// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/category/model/category_controller.dart';

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
        child: Column(
          children: [
            Text(Modular.args.data ?? ' Não vou enviado nenhuma categoria'),
            TextButton(
              child: const Text('get category Controller'),
              onPressed: () {
                var controller = Modular.get<CategoryController>();
                log(' categoria ${controller.hashCode}');
              },
            )
          ],
        ),
      ),
    );
  }
}
