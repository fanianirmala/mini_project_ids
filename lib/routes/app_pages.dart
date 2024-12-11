import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.PHOTOS,
      page: () => ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}