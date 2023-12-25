import 'dart:math';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProductPage extends StatelessWidget {
  var a = 1;

  ProductPage({super.key, required this.a});

  List productImage = [
    "assets/product_image_00.png",
    "assets/product_image_01.png",
    "assets/product_image_10.png",
    "assets/product_image_11.png",
    "assets/product_image_20.png",
    "assets/product_image_21.png",
    "assets/product_image_30.png",
    "assets/product_image_31.png",
    "assets/product_image_40.png",
    "assets/product_image_41.png",
    "assets/product_image_50.png",
    "assets/product_image_51.png",
    "assets/product_image_60.png",
    "assets/product_image_61.png",
    "assets/product_image_70.png",
    "assets/product_image_71.png",
    "assets/product_image_80.png",
    "assets/product_image_81.png",
    "assets/product_image_90.png",
    "assets/product_image_91.png",
    "assets/product_image_100.png",
    "assets/product_image_101.png",
  ];

  List productName = [
    "Samsung Galaxy S5",
    "Cotton Comfort Men's T-Shirt",
    "Urban Explorer Men's Jacket",
    "Classic Wool Men's Coat",
    "TechWear Smartwatch",
    "Acoustic Harmony P47 Wireless Headphones",
    "Stride Rite Men's Running Shoes",
    "Stealth Black Chrono Watch",
    "Arctic White Elegance Watch",
    "Essential White Cotton T-Shirt",
    "Ruby Red Wireless Headphones",
    "Amethyst Purple Bluetooth Earbuds",
    "Obsidian Black Wireless Earbuds",
    "Snow White True Wireless Earbuds",
    "Emerald Green In-Ear Earbuds",
    "Onyx Black Smartwatch 2",
    "Scarlet Red Fashion Watch",
    "Shadow Black Sporty Watch 3",
    "TechGear Smart Watch 2",
    "Lime Green Over-Ear Headphones",
    "Ruby Red On-Ear Headphones",
    "Jet Black Noise-Canceling Headphones",
  ];
  Random randomNumber = Random();
  String productDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec neque tellus. Maecenas viverra elit justo, sit amet facilisis nisi euismod iaculis. Nullam lobortis eros id posuere vestibulum. Curabitur quis dictum est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam quis dictum sem, eget lacinia purus. Vivamus convallis gravida ex et efficitur. Aenean tortor enim, semper a felis eu, mollis dignissim lectus. Interdum et malesuada fames ac ante ipsum primis in f';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xffD4ECF7),
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffD4ECF7),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                    ),
                    child: Center(
                        child: Image(image: AssetImage(productImage[a]))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName[a],
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Color(0xffFF9529), size: 25),
                            const Icon(Icons.star,
                                color: Color(0xffFF9529), size: 25),
                            const Icon(Icons.star,
                                color: Color(0xffFF9529), size: 25),
                            const Icon(Icons.star,
                                color: Color(0xffFF9529), size: 25),
                            const Icon(Icons.star,
                                color: Color(0xffFF9529), size: 25),
                            const SizedBox(
                              width: 7,
                            ),
                            Text('(${randomNumber.nextInt(999)})')
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'PKR ${randomNumber.nextInt(999)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(productDescription),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  color: const Color(0xffD4ECF7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Icon(
                                    LineIcons.heart,
                                    color: Colors.red,
                                    size: 27,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
