import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/controller/getX%20controller/cart_show_controller.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    ShowCartProductsController controller = Get.put(ShowCartProductsController());
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          title: SizedBox(
              height: 32,
              width: 114,
              child: Image.asset("images/pcmart.jpg")),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CommonIconButton(onTap: (){
                Get.to(()=>NotificationShow());
              }),
            )
          ],
        ),
        body: Obx(
              () => controller.isLoading.isTrue
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ListView.builder(
                itemCount: controller.showCart.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30, left: 20, right: 20),
                    child: SizedBox(
                      height: 150,

                      child: Expanded(
                        child: Row(
                          children: [
                            Card(
                              color: Colors.white,
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset("${controller.showCart[index].images}"),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Id:${controller.showCart[index].id}"),
                                  Text("Name: ${controller.showCart[index].name}",style: TextStyle(overflow:TextOverflow.ellipsis),),
                                  Text("price: ${controller.showCart[index].price}"),
                                  Text("Quantity:${controller.showCart[index].stock} "),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            IconButton(
                                onPressed: () {
                                  controller.deleteFromCartFun(id: controller.showCart[index].id ?? 0);
                                },
                                icon: const Icon(
                                  Icons.delete_forever,
                                  color: Colors.deepOrange,
                                )),
                        
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}