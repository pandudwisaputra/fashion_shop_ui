import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_shop/common/shop_color.dart';
import 'package:fashion_shop/model/model_categories.dart';
import 'package:fashion_shop/model/model_product.dart';
import 'package:fashion_shop/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ShopColor.color1,
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SizedBox(
              height: height / 10.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hi, Pandu',
                      style: TextStyle(
                          fontFamily: 'Artegra',
                          color: ShopColor.primaryColor,
                          fontSize: 12)),
                  SizedBox(
                    height: height / 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Find the best',
                            style: TextStyle(
                                fontFamily: 'Artegra',
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'fashion for you',
                                style: TextStyle(
                                    fontFamily: 'Artegra',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              SvgPicture.asset(
                                'assets/svg/fire_icon.svg',
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              iconSize: 30.0,
                              onPressed: () {},
                              icon: const Icon(Icons.search)),
                          IconButton(
                              iconSize: 30.0,
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 50,
          ),
          const CarouselHomePage(),
          SizedBox(
            height: height / 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                        fontFamily: 'Artegra',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                      height: height / 9.4,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesList.length,
                          itemBuilder: (context, index) {
                            final ModelCategories categories =
                                categoriesList[index];
                            return Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: height / 90,
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: categories.color,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(15),
                                        onTap: () {},
                                        child: Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            height: height / 12,
                                            width: width / 3.6,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  categories.name,
                                                  style: const TextStyle(
                                                      fontFamily: 'Artegra',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 6,
                                  child: Image.asset(
                                    categories.imageAsset,
                                    height: height / 10,
                                  ),
                                ),
                              ],
                            );
                          })),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Popular Products',
                    style: TextStyle(
                        fontFamily: 'Artegra',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: height / 90,
                  ),
                  SizedBox(
                    height: height / 3.7,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final ModelProducts products = productsList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: DetailPage(
                                    products: products,
                                  ),
                                  type: PageTransitionType.rightToLeft,
                                  childCurrent: this,
                                  duration: const Duration(milliseconds: 400),
                                  reverseDuration:
                                      const Duration(milliseconds: 400),
                                ),
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: SizedBox(
                                  width: width / 2.3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height / 90,
                                      ),
                                      SizedBox(
                                          height: height / 8,
                                          width: double.maxFinite,
                                          child: Image.asset(
                                            products.imageAsset,
                                            fit: BoxFit.contain,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: height / 60,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.black),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xFFD3AD75)),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xFF3A4387)),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xFF385772)),
                                                ),
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xFF7E3D6B)),
                                                ),
                                                SizedBox(
                                                  width: width / 5.5,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: height / 80,
                                            ),
                                            Text(
                                              'Rp${products.price}',
                                              style: const TextStyle(
                                                  fontFamily: 'Artegra',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: height / 150,
                                            ),
                                            Text(
                                              products.name,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontFamily: 'Artegra',
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 90,
          )
        ],
      )),
    );
  }
}

class CarouselHomePage extends StatefulWidget {
  const CarouselHomePage({super.key});

  @override
  State<CarouselHomePage> createState() => _CarouselHomePageState();
}

class _CarouselHomePageState extends State<CarouselHomePage> {
  int _current = 0;

  final List<String> imgList = [
    'assets/jpg/slider1.jpg',
    'assets/jpg/slider2.jpg',
    'assets/jpg/slider3.jpg',
    'assets/jpg/slider4.jpg'
  ];
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: height / 3.5,
        child: Column(
          children: [
            Builder(
              builder: (context) {
                return CarouselSlider(
                  options: CarouselOptions(
                      height: height / 4.3,
                      viewportFraction: 1.0,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList
                      .map((item) => ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Center(
                                child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                            )),
                          ))
                      .toList(),
                  carouselController: _controller,
                );
              },
            ),
            SizedBox(
              height: height / 140,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: (_current == entry.key ? 20.0 : 11.0),
                    height: 11.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (_current == entry.key
                            ? ShopColor.primaryColor
                            : Colors.grey)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
