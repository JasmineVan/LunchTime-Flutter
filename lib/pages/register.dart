import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/login.dart';

import '../common_widgets/common_textfield.dart';
import '../main.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final textEditingController = TextEditingController();
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();
  final textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/pic4.jpg"),
          fit: BoxFit.cover,
          opacity: 0.8,
        )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
            child: const Text('REGISTER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0, left: 40.0, right: 40.0),
              margin: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Text('Full Name',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 16.0,
                      //     )),
                      CommonTextField(
                        textInputType: TextInputType.text,
                        textFieldLabelText: 'Full Name',
                        textEditingController: textEditingController,
                        prefixIcon: const Icon(Icons.person),
                        maxLengthInput: 50,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text('Username',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 16.0,
                        //     )),
                        CommonTextField(
                          textInputType: TextInputType.text,
                          textFieldLabelText: 'Username / Email',
                          textEditingController: textEditingController1,
                          prefixIcon: const Icon(Icons.mail),
                          maxLengthInput: 40,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text('Password',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 16.0,
                        //     )),
                        CommonTextField(
                          textInputType: TextInputType.text,
                          textFieldLabelText: 'Password',
                          obscureText: true,
                          textEditingController: textEditingController2,
                          prefixIcon: const Icon(Icons.lock),
                          maxLengthInput: 16,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text('Phone Number',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 16.0,
                        //     )),
                        CommonTextField(
                          textInputType: TextInputType.phone,
                          textFieldLabelText: 'Phone Number',
                          textEditingController: textEditingController3,
                          prefixIcon: const Icon(Icons.phone),
                          maxLengthInput: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 4.0),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 160.0,
                            height: 40.0,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                onPressed: () => Get.to(const Otp()),
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an Account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          )),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: const Text('Sign in',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
