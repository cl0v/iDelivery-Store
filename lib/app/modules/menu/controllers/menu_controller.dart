import 'package:delivery_store/app/data/model/product_model.dart';
import 'package:delivery_store/app/data/repository/product_repository.dart';
import 'package:delivery_store/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final ProductRepository repository;
  MenuController({@required this.repository});

  var store;

  final _products = <ProductModel>[].obs;

  List<ProductModel> get productList => _products;

  @override
  void onInit() {
    store = Get.arguments['store']; //TODO: Create persistent product list data
    _fetchProducts();
    super.onInit();
  }

  maskValue(double value) {
    var controller = new MoneyMaskedTextController(leftSymbol: 'R\$ ');
    controller.updateValue(value);
    return controller.text;
  }

  _fetchProducts() async {
    _products.assignAll(await repository.getAll(store));
  }

  onProductCardPressed(ProductModel product) {
    Get.toNamed(Routes.MENU + Routes.PRODUCT, arguments: {'product': product});
  }

  Future<void> onAddProductPressed() async {
    // var newProduct = await Get.toNamed(Routes.PRODUCTS + Routes.CREATE_PRODUCT,
    await Get.toNamed(Routes.MENU + Routes.CREATE_PRODUCT,
        arguments: {'store': store});
    // if (newProduct != null) _products.add(newProduct);
  }
}
