import 'package:get/get.dart';
import 'package:pc_mart/Model/CartProductShow.dart';
import 'package:pc_mart/controller/api%20service/show_cart_products.dart';

class ShowCartProductsController extends GetxController {
  RxBool isLoading = false.obs;
  List<CartProducts> showCart = <CartProducts>[].obs;
  RxInt counter = 1.obs;

  getShowCart() async {
    isLoading.value = true;
    var data = await ShowCartProductsService.showCartProductsService();
    isLoading.value = false;
    showCart = data?.cartProducts ?? [];
  }

  deleteFromCartFun({required Object id})async{
    isLoading.value=true;
    var deleteData= "";
    isLoading.value=false;
  }
  @override
  void onInit() {
    getShowCart();
    super.onInit();
  }
}
