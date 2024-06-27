import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/views/widgets/custom_button.dart';
import 'package:jwero_sales_app/views/widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget forTabletScreen(BuildContext context) {
    return SizedBox();
  }

  Widget forMobileScreen(BuildContext context) {
    return SizedBox();
  }

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  Image.asset(
                    "jwero_logo",
                    width: 10.0,
                    height: 10.0,
                  ),
                  // SizedBox(
                  //   height: 50.0,
                  // ),
                  Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Please login to continue",
                        style: Fontsizes.subHeadingStyle,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text("Email address"),
                      SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                        inputFontSize: Fontsizes.textFormInputFieldSize,
                        errorFontSize: Fontsizes.errorTextSize,
                        textEditingController: _emailController,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text("Password"),
                      SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                        inputFontSize: Fontsizes.textFormInputFieldSize,
                        errorFontSize: Fontsizes.errorTextSize,
                        textEditingController: _passwordController,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 24, 125, 207)),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomButton(
                          rightIcon: false,
                          leftIcon: false,
                          isLoading: false,
                          width: 0.0,
                          height: 0.0,
                          fontSize: Fontsizes.buttonTextSize)
                    ],
                  ),

                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(text: "Don't have an account already?"),
                    TextSpan(
                      text: "Sign up here",
                      style: TextStyle(
                          color: Colors.yellow,
                          overflow: TextOverflow.ellipsis),
                    )
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
