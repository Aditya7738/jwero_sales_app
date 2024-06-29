import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/strings.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CachedNetworkImage(
          imageUrl: Strings.app_logo,
          fit: BoxFit.fill,
          height: 30.0,
          width: 160.0,
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10.0),
              alignment: Alignment.center,
              //TODO: give height to button container after it start loading
              // width: 210.0,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 216, 216)),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/default_image.png",
                    width: 25.0,
                    height: 20.0,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Rohan Shetty",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 30.0,
                  )
                  // Container(
                  //   color: Colors.yellow,
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     alignment: Alignment.center,
                  //     iconSize: 30.0,
                  //     color: Colors.blue,
                  //     icon: Icon(

                  //     ),
                  //   ),
                  // )
                ],
              )),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("TOtal is "),
      ),
    );
  }
}
