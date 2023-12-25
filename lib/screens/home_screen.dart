import 'dart:math';

import 'package:ecommerce_store/screens/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  List<Color> Clr = [
    const Color.fromARGB(255, 246, 111, 58),
    const Color.fromARGB(255, 36, 131, 233),
    const Color.fromARGB(255, 63, 208, 143),
  ];

  List images = [
    "assets/slide1.png",
    "assets/slide3.png",
    "assets/slide4.png",
  ];

  List icons = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon5.png",
    "assets/icon6.png",
    "assets/icon7.png",
  ];

  List saleText = [
    "Get 30% off\non Winter Sale",
    "Buy Now, Pay Later",
    "Flat 50% off",
  ];

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

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        spreadRadius: 2,
                      )
                    ]),
                child: const Icon(CupertinoIcons.cart),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        spreadRadius: 2,
                      )
                    ]),
                child: const Icon(CupertinoIcons.search),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(
            'Hello Ali Raza',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Let's shop something 🛒",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w400),
          ),
        ),
        SingleChildScrollView(
            padding: const EdgeInsets.only(left: 15, top: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.only(right: 15),
                    height: 150,
                    // width: 300,
                    decoration: BoxDecoration(
                      color: Clr[i],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 8, spreadRadius: 3),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              saleText[i],
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(images[i]),
                              height: 110,
                              width: 110,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            )),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Categories',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('View All'),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              for (var i = 0; i < 7; i++)
                Container(
                  // padding: EdgeInsets.only(top: 15),
                  margin: const EdgeInsets.only(right: 20),
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD4ECF7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Center(
                    child: Image(
                      image: AssetImage(icons[i]),
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Products',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('View All'),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (int i = 0; i <= 10; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductPage(a: (i + i))));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                margin: const EdgeInsets.only(
                                    right: 12, bottom: 20),
                                decoration: BoxDecoration(
                                    color: const Color(0xffD4ECF7),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 6,
                                          spreadRadius: 2,
                                          color: Colors.grey)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${randomNumber.nextInt(30)}% off',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                CupertinoIcons.heart,
                                                size: 20,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      Image(
                                        image: AssetImage(productImage[i + i]),
                                        height: 150,
                                        width: 150,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            productName[i + i],
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'PKR ${randomNumber.nextInt(999)}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.red),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductPage(a: (i + i + 1))));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                margin:
                                    const EdgeInsets.only(left: 12, bottom: 20),
                                decoration: BoxDecoration(
                                    color: const Color(0xffD4ECF7),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 6,
                                          spreadRadius: 2,
                                          color: Colors.grey)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${randomNumber.nextInt(30)}% off',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                CupertinoIcons.heart,
                                                size: 20,
                                                color: Colors.black),
                                          )
                                        ],
                                      ),
                                      Image(
                                        image:
                                            AssetImage(productImage[i + i + 1]),
                                        height: 150,
                                        width: 150,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            productName[i + i + 1],
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            'PKR ${randomNumber.nextInt(999)}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.red),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
