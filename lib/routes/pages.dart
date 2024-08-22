import 'package:agendabarber/app/modules/homepage/homepage_view.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage()
    ),
  ];
}