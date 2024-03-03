import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital/core/app_export.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var opacity=1.0;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: SizedBox(
                  width: 1000.0,
                  child: Column(
                    children: [
                    Container(
                    width: 1.7976931348623157e+308,
                    padding: const EdgeInsets.fromLTRB(500.0, 23.0, 500.0, 17.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup18,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 34.0,
                            top: 16.0,
                            bottom: 35.0,
                          ),
                          child: Text(
                            "Doctor Appointment ",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20.fSize,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: 'assets/images/img_screenshot_2024_02_13.png',
                          height: 71.0,
                          width: 24.0,
                          margin: const EdgeInsets.only(bottom: 9.0),
                        ),
                      ],
                    ),
                  ),
                      const SizedBox(height: 40.0),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 11.0),
                      const Text(
                        "Log in to your account",
                        style: TextStyle(
                          color: Color(0XFF00B0FF),
                          fontSize: 12.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      CustomTextFormField(
                        width: 276.0,
                        height: 23.0,
                        controller: emailController,
                        hintText: "justinng046@gmail.com",
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10.0),
                      CustomTextFormField(
                        width: 276.0,
                        controller: passwordController,
                        hintText: "***********",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 10.0),
                      const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(right: 92.0),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0XFF00B0FF),
                              fontSize: 10.0,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 49.0),
                      AnimatedPositioned(
                          bottom: 60,
                          duration: const Duration(milliseconds: 400),

                          child: InkWell(
                            onTap: ()
                            {
                              opacity=0;
                              setState(() {
                              });
                              Timer(const Duration(milliseconds: 400),() {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home(),));
                              },);
                            },
                            child: AnimatedOpacity(
                              opacity: opacity,
                              duration: const Duration(milliseconds: 400),
                              child: Container(
                                width: 150,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child:  TextWidget("Login", 17, Colors.white, FontWeight.bold,letterSpace: 0,),
                                ),
                              ),
                            ),
                          ),
                      ),
                      const SizedBox(height: 22.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.0),
                            child: SizedBox(
                              width: 57.0,
                              child: Divider(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Or sign in with ",
                              style: TextStyle(
                                color: Color(0XFF00B0FF),
                                fontSize: 10.0,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.0),
                            child: SizedBox(
                              width: 69.0,
                              child: Divider(
                                indent: 11.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 53.0,
                                width: 75.0,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 23.0,
                                  vertical: 13.0,
                                ),
                                decoration:BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: CustomImageView(
                                  imagePath: 'assets/images/img_google_original.svg',
                                  height: 27.0,
                                  width: 28.0,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: CustomIconButton(
                                  height: 53.0,
                                  width: 75.0,
                                  decoration:BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  padding: const EdgeInsets.all(11.0),
                                  child: CustomImageView(
                                    imagePath: 'assets/images/img_facebook_original.svg',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: CustomIconButton(
                                  height: 53.0,
                                  width: 76.0,
                                  decoration:BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  padding: const EdgeInsets.all(11.0),
                                  child: CustomImageView(
                                    imagePath: 'assets/images/img_apple_original.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                            children: [
                              const Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                  color: Color(0XFF00B0FF),
                                  fontSize: 10.0,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Register(),));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: const Text(
                                    "Sign up here",
                                    style:TextStyle(
                                      color: Color(0XFF00B0FF),
                                      fontSize: 10.0,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 59.0),
                      CustomImageView(
                        imagePath: 'assets/images/img_vector_3.png',
                        height: 100.0,
                        width: 1000.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}


class CustomTextFormField extends StatelessWidget {

  final Alignment? alignment;

  final double? width;
  final double? height;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.height,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: textFormFieldWidget(context),
    )
        : textFormFieldWidget(context);
  }
  Widget textFormFieldWidget(BuildContext context) => SizedBox(
    width: 180.0,
    height: 50.0,
    child: TextFormField(
      scrollPadding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      autofocus: autofocus!,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10.0,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
      ),
      obscureText: obscureText!,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: const TextStyle(
      color: Colors.white70,
      fontSize: 10.0,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
    ),
    prefixIcon: prefix,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ?? const EdgeInsets.all(4.0),
    fillColor: const Color(0XFF00B0FF),
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.0),
          borderSide: BorderSide.none,
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.0),
          borderSide: BorderSide.none,
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.0),
          borderSide: BorderSide.none,
        ),
  );
}
