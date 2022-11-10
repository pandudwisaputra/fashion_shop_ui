import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_shop/common/shop_color.dart';
import 'package:fashion_shop/model/model_product.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final ModelProducts products;
  const DetailPage({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            iconSize: 20.0,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ShopColor.primaryColor,
            )),
        title: const Text(
          'Details',
          style: TextStyle(
              fontFamily: 'Artegra',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: ShopColor.primaryColor),
        ),
        actions: [
          const FavoriteButton(),
          IconButton(
              iconSize: 25.0,
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: ShopColor.primaryColor,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: height / 2,
              child: Stack(
                children: [
                  CarouselDetailPage(
                    products: products,
                  ),
                  Positioned(
                    right: 20,
                    top: height / 7,
                    child: Column(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFD3AD75)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3A4387)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF385772)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF7E3D6B)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: height / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rp${products.price}',
                    style: const TextStyle(
                        fontFamily: 'Artegra',
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: height / 95,
                  ),
                  Text(
                    products.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontFamily: 'Artegra', fontSize: 22),
                  ),
                  SizedBox(
                    height: height / 35,
                  ),
                  const Text(
                    'Available Size',
                    style: TextStyle(
                        fontFamily: 'Artegra',
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: height / 125,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: height / 22,
                          width: height / 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'XS',
                              style: TextStyle(
                                  fontFamily: 'Artegra',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          )),
                      Container(
                          height: height / 22,
                          width: height / 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                  fontFamily: 'Artegra',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          )),
                      Container(
                          height: height / 22,
                          width: height / 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'M',
                              style: TextStyle(
                                  fontFamily: 'Artegra',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          )),
                      Container(
                          height: height / 22,
                          width: height / 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'L',
                              style: TextStyle(
                                  fontFamily: 'Artegra',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          )),
                      Container(
                          height: height / 22,
                          width: height / 22,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'XL',
                              style: TextStyle(
                                  fontFamily: 'Artegra',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          )),
                      SizedBox(
                        width: width / 4,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height / 10,
        color: ShopColor.color1,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height / 18,
              width: height / 18,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ShopColor.primaryColor,
              ),
              child: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
            ),
            Container(
              height: height / 18,
              width: height / 18,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ShopColor.primaryColor,
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
            Container(
              height: height / 18,
              width: width / 1.8,
              decoration: BoxDecoration(
                  color: ShopColor.primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      fontFamily: 'Artegra',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 25.0,
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : ShopColor.primaryColor,
        ));
  }
}

class CarouselDetailPage extends StatefulWidget {
  final ModelProducts products;
  const CarouselDetailPage({super.key, required this.products});

  @override
  State<CarouselDetailPage> createState() => _CarouselDetailPageState();
}

class _CarouselDetailPageState extends State<CarouselDetailPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Builder(
          builder: (context) {
            return CarouselSlider(
              options: CarouselOptions(
                  height: height / 2.2,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: widget.products.imageList
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
          children: widget.products.imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: (_current == entry.key ? 20.0 : 11.0),
                height: 11.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
    );
  }
}
