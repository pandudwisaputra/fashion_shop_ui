import 'package:fashion_shop/common/shop_color.dart';
import 'package:fashion_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/jpg/image_onboarding.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Express your style\nwith new fashion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Artegra',
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: ShopColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 166, height: 54),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const HomePage(),
                            type: PageTransitionType.fade,
                            childCurrent: this,
                            duration: const Duration(milliseconds: 400),
                            reverseDuration: const Duration(milliseconds: 400),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(ShopColor.primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30)))),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'Artegra',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
