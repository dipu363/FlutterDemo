
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/state_manager/network_controller.dart';

class DependencyInjection {

  static void init() {
    Get.put<NetworkController>(NetworkController(),permanent:true);
  }
}