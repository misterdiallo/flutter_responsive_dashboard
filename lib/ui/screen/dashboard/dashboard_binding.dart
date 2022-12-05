import 'package:get/get.dart';
import 'package:responsive_dashboard/ui/screen/dashboard/dashboad_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
