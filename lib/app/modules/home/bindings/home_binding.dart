import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_store/app/data/provider/auth_provider.dart';
import 'package:delivery_store/app/data/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:delivery_store/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        authRepository: AuthRepository(
          provider: AuthProvider(
            auth: FirebaseAuth.instance,
          ),
        ),
      ),
    );
  }
}
