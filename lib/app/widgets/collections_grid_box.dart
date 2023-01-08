// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:clubfolio/app/pages/women_collection/view.dart';
import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';

class CollectionsGridBox extends StatefulWidget {
  String imageName;
  String name;
  Color color;
  Color bgColor;
  CollectionsGridBox({
    Key? key,
    required this.imageName,
    required this.name,
    required this.color,
    required this.bgColor,
  }) : super(key: key);

  @override
  State<CollectionsGridBox> createState() => _CollectionsGridBoxState();
}

class _CollectionsGridBoxState extends State<CollectionsGridBox> {
  bool flag = false;

  @override
  void initState() {
    setState(() {
      flag = !flag;
    });
    super.initState();
  }

  Widget buildContainer(bool flag) {
    return Container(
      // duration: Duration(milliseconds: -50),
      child: flag == false
          ? Stack(
              children: [
                Positioned.fill(
                  child: Image(
                    image: AssetImage(widget.imageName),
                    colorBlendMode: BlendMode.softLight,
                    width: 190,
                    height: 96,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 190,
                  height: 96,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.8),
                        Color.fromRGBO(0, 0, 0, 0),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Image(
              image: AssetImage(widget.imageName),
              colorBlendMode: BlendMode.softLight,
              width: 190,
              height: 96,
              fit: BoxFit.fill,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: widget.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Hero(
              tag: UniqueKey(),
              transitionOnUserGestures: true,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    flag = !flag;
                  });
                  Timer(
                    const Duration(milliseconds: 160),
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WomenCollectionView(flag: flag),
                        ),
                      );
                      setState(() {
                        flag = !flag;
                      });
                    },
                  );
                },
                child: buildContainer(flag),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  widget.name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: widget.color,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // height: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
