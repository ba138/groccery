import 'package:flutter/material.dart';
import 'package:groccery/res/colors.dart';
import 'package:groccery/res/components/drawer.dart';
import 'package:groccery/res/widgets/home_card.dart';
import 'package:groccery/res/widgets/vertical_spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerScreen(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: AppColor.primaryColor,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      icon: const Icon(
                        Icons.notes,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40.0,
                    color: AppColor.primaryColor.withOpacity(0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: AppColor.whiteColor,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Search Products...',
                                hintStyle: TextStyle(
                                  fontFamily: 'CenturyGothic',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.whiteColor,
                                ),
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                fontFamily: 'CenturyGothic',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColor.fontColor,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          color: AppColor.primaryColor,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.tune_outlined,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(20),
            Expanded(
              child: GridView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (_, index) {
                  return HomeCard(
                    ontap: () {},
                    percentage: "20",
                    oofProd: true,
                    productId: "product['id']",
                    sellerId: "product['sellerId']",
                    name: "Fish",
                    price: "1200",
                    dPrice: "800",
                    borderColor: AppColor.whiteColor,
                    fillColor: AppColor.primaryColor,
                    img:
                        "https://st5.depositphotos.com/6162608/69046/i/450/depositphotos_690468424-stock-photo-raw-dorado-fish-cutting-board.jpg",
                    iconColor: AppColor.primaryColor,
                    addCart: () {},
                    productRating: 4.5,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
