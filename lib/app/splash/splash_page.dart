import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/category', arguments: 'categoria selecionada');
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/product');
              },
              child: const Text('Produto Module'),
            ),
          ],
        ),
      ),
    );
  }
}
