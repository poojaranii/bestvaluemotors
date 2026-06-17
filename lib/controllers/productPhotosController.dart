import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductPhotosController extends GetxController{
  RxList<String> damageImages = <String>[
    "assets/images/car.jpg",
    "assets/images/car.jpg",
    "assets/images/car.jpg",
    "assets/images/car.jpg",
  ].obs;
}