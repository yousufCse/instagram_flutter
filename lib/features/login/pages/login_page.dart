import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instragram_flutter/core/utils/colors.dart';

import 'package:instragram_flutter/core/utils/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: getHeight(32)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // svg image
              SvgPicture.asset(
                'assets/icons/ic_instagram.svg',
                color: primaryColor,
                height: getHeight(64),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
