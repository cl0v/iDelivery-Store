import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_store/app/data/provider/product_provider.dart';
import 'package:delivery_store/app/data/repository/product_repository.dart';
import 'package:delivery_store/app/modules/menu/controllers/menu_controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(
        repository: ProductRepository(
          provider: ProductProvider(
            firestore: FirebaseFirestore.instance,
            storage: FirebaseStorage.instance,
          ),
        ),
      ),
      fenix: true,
    );
  }
}
