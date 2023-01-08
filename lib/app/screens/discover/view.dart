import 'dart:async';

import 'package:clubfolio/app/pages/women_collection/view.dart';
import 'package:clubfolio/app/utils/utils.dart';
import 'package:clubfolio/app/widgets/collections_grid_box.dart';
import 'package:clubfolio/app/widgets/invest_info_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  final searchController = TextEditingController();

  Widget searchBox(TextEditingController controller, String hintText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: darkGreyColor,
        border: Border.all(color: HexColor("#0A0A0A")),
      ),
      width: double.infinity,
      height: 54,
      child: Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: lightColor,
              ),
              onTap: () {},
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: lightColor,
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0A0A0A"),
      appBar: AppBar(
        backgroundColor: HexColor("#0A0A0A"),
        toolbarHeight: 84,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 43.0,
            bottom: 26.0,
            left: 12,
            right: 12,
          ),
          child: searchBox(
            searchController,
            "Discover your next big idea",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 340,
              width: double.infinity,
              color: HexColor("#0A0A0A"),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invest in Indexes 🤘",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: yellowColor,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                        ),
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 0,
                            childAspectRatio: 1,
                            mainAxisExtent: 160,
                          ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return const InvestInfoBox();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 446,
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgroundColor,
                image: const DecorationImage(
                  opacity: 0.09,
                  image: AssetImage("assets/images/bgcross.png"),
                  fit: BoxFit.fitWidth,
                  repeat: ImageRepeat.repeat,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    child: Container(
                      width: 150,
                      height: 60,
                      color: Colors.transparent,
                      child: const Image(
                        image: AssetImage("assets/images/collectionsclub.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        bottom: 24.0,
                      ),
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 0.9,
                          mainAxisExtent: 190,
                        ),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return CollectionsGridBox(
                            imageName: "assets/images/bgwomen.png",
                            name: "Top companies led by Women 👑",
                            color: HexColor("#D48593"),
                            bgColor: HexColor("#2B0000"),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
