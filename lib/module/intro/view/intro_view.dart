import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uiecommerce/core.dart';
import 'package:uiecommerce/core/widget/button/button.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              /*
              TODO: Implement this @ controller
              int currentIndex = 0;
              final CarouselController carouselController = CarouselController();
              */
              Expanded(
                child: Builder(builder: (context) {
                  List<Map<String, dynamic>> instructionItems = [
                    {
                      "photo":
                          "https://img.freepik.com/premium-vector/ecommerce-online-shopping-delivery-flat-illustration_498307-604.jpg?w=826",
                      "title": "Instruction 1.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/niche-service-marketplace-concept-illustration_114360-7403.jpg?w=826&t=st=1693243333~exp=1693243933~hmac=d2d5e15eb9c794897499551eea03b9e2a77f02bd62cd176fd6d276a3f3bfe39b",
                      "title": "Instruction 2.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/online-groceries-concept-illustration_114360-1767.jpg?w=826&t=st=1693243312~exp=1693243912~hmac=82a5e528fe1564564d3ef6a5ddc1b9f39e6e3234b16bc32cb81fcbcf806250f7",
                      "title": "Instruction 3.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/add-cart-concept-illustration_114360-1435.jpg?w=826&t=st=1693243255~exp=1693243855~hmac=5e69023d0ed7e78a65707fdfb14068a726c42fa424aad8f483fd36b959fb80c4",
                      "title": "Instruction 4.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                      "photo":
                          "https://img.freepik.com/free-vector/catalogue-concept-illustration_114360-2053.jpg?w=826&t=st=1693243388~exp=1693243988~hmac=37bfac86776cea524056e743a95e897cf686350e03b3103191d74d8041ad4d7a",
                      "title": "Instruction 5.0",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                  ];

                  return Column(
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          carouselController: controller.carouselController,
                          options: CarouselOptions(
                            height: 500.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              controller.currentIndex = index;
                              controller.setState(() {});
                            },
                          ),
                          items: instructionItems.map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              item["photo"],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      item["title"],
                                      style: const TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      item["description"],
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: instructionItems.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(
                                          controller.currentIndex == entry.key
                                              ? 0.9
                                              : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 30.0,
              ),
              QButton(
                label: "Next",
                OnPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
