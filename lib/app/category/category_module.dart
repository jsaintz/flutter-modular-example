import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/category/category_page.dart';
import 'package:flutter_modular_example/app/category/model/category_controller.dart';

class CategoryModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => CategoryController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoryPage(category: args.data),
        ),
      ];
}
