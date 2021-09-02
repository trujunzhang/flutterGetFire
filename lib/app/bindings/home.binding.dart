import 'package:get/get.dart';
import 'package:ieatta/app/controller/home.controller.dart';
import 'package:ieatta/app/data/provider/cloud_firestore.provider.dart';
import 'package:ieatta/app/data/repository/user.repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(
        repository:
            UserRepository(apiClient: CloudFirestoreApi(collection: "users"))));
  }
}
