import 'package:flutter/material.dart';
import 'package:food_ui_kit/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ALL PRODUCT LIST"),
        actions: [
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                label: Text('0'),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 5,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            width: double.infinity,
                            child: Image.asset(
                              productController.products[index].productImage,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productController.products[index].productName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    productController.products[index].favorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price : ${productController.products[index].price} ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to Card',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: productController.products.length),
          )
        ],
      ),
    );
  }
}
