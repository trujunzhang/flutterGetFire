import 'package:get/get.dart';
import 'package:ieatta/app/controller/auth.controller.dart';
import 'package:ieatta/app/data/provider/cloud_firestore.provider.dart';
import 'package:ieatta/app/data/repository/user.repository.dart';
import 'package:ieatta/app/data/services/authentification.service.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(
        authService: new AuthentificationService(),
        userRepository:
            UserRepository(apiClient: CloudFirestoreApi(collection: "users"))));
  }
}
