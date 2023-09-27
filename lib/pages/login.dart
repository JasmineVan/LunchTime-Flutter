import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/home.dart';
import 'package:helloworld/pages/register.dart';

import '../common_widgets/common_textfield.dart';
import 'navigation_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final textEditingController = TextEditingController();
  final textEditingController1 = TextEditingController();

  void verify() {
    if (textEditingController1.text.compareTo('1') == 0) {
      // true
      // Get.off(HomePage(
      //   username: textEditingController.text,
      // ));
      Get.to(Navigation());
    } else {
      // false
      Get.snackbar('Couldn\'t find your Lunch Time account',
          'Username or password is not correct!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/pic3.jpg"),
              fit: BoxFit.cover,
              opacity: 0.8,
            )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
            child: const Text('WELCOME',
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
                      // const Text('Username',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 16.0,
                      //     )),
                      CommonTextField(
                        textInputType: TextInputType.text,
                        textFieldLabelText: 'Username / Email',
                        textEditingController: textEditingController,
                        prefixIcon: const Icon(Icons.person),
                        maxLengthInput: 40,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 24.0),
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
                          textEditingController: textEditingController1,
                          prefixIcon: const Icon(Icons.lock),
                          maxLengthInput: 16,
                        ),
                        const Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text('forgot password?',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14.0,
                              )),
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
                                onPressed: verify,
                                child: const Text(
                                  'Login',
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
                      const Text('Don\'t have a Account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          )),
                      GestureDetector(
                        onTap: () => Get.to(const Register()),
                        child: const Text('Register',
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
      )
    );
  }
}
