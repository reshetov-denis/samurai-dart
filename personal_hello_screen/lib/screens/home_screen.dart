import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  final String userName;

  const HomeScreen({
    super.key,
    required this.userName,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "samurai.dart",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFFF9F2E7),
          )
        ),
        backgroundColor: Color(0xFF3943B7),
      ),
      body: LayoutBuilder(
        builder:(context, constraints) {
          return Container(
            color: Color(0xFFF9F2E7),
            child: Padding(
              padding: EdgeInsetsGeometry.all(12.0.sp),
              child: Center(
                child: Text(
                  "Добро пожаловать,\n${widget.userName}!",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
              color: Color(0xFF3943B7),
                  )
                ),
              ),
            ),
          );
        },
      )
    );
  }
}