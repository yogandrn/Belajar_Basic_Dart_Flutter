import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_core/get_core.dart';
import '/controller/demoController.dart';
import '/controller/purchase.dart';

class HomePage extends StatelessWidget {
  final purchase = Get.put(Purchase()); //controller inti
  DemoController cart = Get.find(); //controller cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      bottomSheet: SafeArea(
          child: Card(
        elevation: 12.0,
        margin: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF427bff)),
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack(
                children: [
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  Positioned(
                      right: 5,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 177, 41, 41)),
                        child: Center(
                          child: GetX<DemoController>(builder: (controller) {
                            return Text(
                              "${controller.cartCount}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            );
                          }),
                        ),
                      ))
                ],
              ),
              GetX<DemoController>(
                builder: ((controller) {
                  return Text(
                    'Total Amount - ${controller.totalAmount}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  );
                }),
              ),
              IconButton(
                  onPressed: () => Get.toNamed('/cart',
                      arguments: "Home Page to Demo Page -> Passing arguments"),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ))
            ]),
          ),
        ),
      )),
      body: Container(child: GetX<Purchase>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                child: Column(children: [
                  Image.network(
                    // "assets/images/pdip.png",/
                    "https://img.alicdn.com/tfs/TB1e.XyReL2gK0jSZFmXXc7iXXa-990-400.png",
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Expanded(child: Padding(padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.products[index].productName, 
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blue)),
                        Text(controller.products[index].productDescription, 
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey)),

                      ],
                    ),),),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () => cart
                        .addToCart(controller.products[index]),
                        child: Text("Shop Now", 
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),),
                      ),
                    )
                  ],)
                ]),
              ),
            ),
          );
        },
      )),
    );
  }
}
