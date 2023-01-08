// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:clubfolio/app/main_screen.dart';
import 'package:clubfolio/app/screens/discover/view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'package:clubfolio/app/widgets/informaion_box.dart';
import 'package:clubfolio/app/widgets/short_info_box.dart';
import 'package:clubfolio/app/widgets/women_info_box.dart';

class WomenCollectionView extends StatefulWidget {
  bool flag;
  WomenCollectionView({
    Key? key,
    required this.flag,
  }) : super(key: key);

  @override
  State<WomenCollectionView> createState() => _WomenCollectionViewState();
}

class _WomenCollectionViewState extends State<WomenCollectionView> {
  @override
  void initState() {
    setState(() {
      widget.flag = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0A0A0A"),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              leading: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.flag = false;
                  });
                  Timer(
                    Duration(milliseconds: 160),
                    () => Navigator.pop(context),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 22,
                ),
              ),
              backgroundColor: Colors.black,
              flexibleSpace: Stack(
                children: [
                  !widget.flag == false
                      ? Stack(
                          children: [
                            Hero(
                              tag: UniqueKey(),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/bgwomen.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(0, 0, 0, 0.8),
                                  Color.fromRGBO(0, 0, 0, 0),
                                ],
                              )),
                            )
                          ],
                        )
                      : Hero(
                          tag: UniqueKey(),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/images/bgwomen.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                  Positioned(
                    top: 72,
                    left: 28,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientText(
                          "Top Companies led by Women 👑",
                          colors: [
                            HexColor("#F7C97E"),
                            HexColor("#F07D53"),
                          ],
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        ShortInfoBox(),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                          color: HexColor("#0A0A0A")),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          color: HexColor("#0A0A0A"),
                        ),
                        child: WomenInfoBox(),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                    child: InformationBox(),
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
