import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/category/category_module.dart';
import 'package:flutter_modular_example/app/product/product_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context, args) => const SplashPage()),
        ModuleRoute('/category', module: CategoryModule()),
        ModuleRoute('/product', module: ProductModule()),
      ];
}
