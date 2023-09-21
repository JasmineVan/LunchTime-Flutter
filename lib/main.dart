import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/home.dart';
import 'common_widgets/common_textfield.dart';

class ObscuredTextFieldSample extends StatefulWidget {
  const ObscuredTextFieldSample({super.key});

  @override
  State<ObscuredTextFieldSample> createState() =>
      _ObscuredTextFieldSampleState();
}

class _ObscuredTextFieldSampleState extends State<ObscuredTextFieldSample> {
  final textEditingController = TextEditingController();
  final textEditingController1 = TextEditingController();

  void verify() {
    if (textEditingController1.text.compareTo('1') == 0) {
      // true
      Get.off(HomePage(
        username: textEditingController.text,
      ));
    } else {
      // false
      Get.snackbar('Couldn\'t find your Lunch Time account',
          'Username or password is not correct!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 40.0, right: 40.0),
            margin: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Username',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        )),
                    CommonTextField(
                      textFieldLabelText: 'Username / Email',
                      textEditingController: textEditingController,
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          )),
                      CommonTextField(
                        textFieldLabelText: 'Password',
                        obscureText: true,
                        textEditingController: textEditingController1,
                        prefixIcon: const Icon(Icons.lock),
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

                Column(
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have a Account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        )),
                    Text('Sign in',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class TextFieldExampleApp extends StatelessWidget {
  const TextFieldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
    // return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //     titleTextStyle: const TextStyle(
        //       color: Colors.white,
        //       fontSize: 24.0,
        //     ),
        //     backgroundColor: Colors.red,
        //     title: const Text('Lunch Time')),
        body: Center(
          child: ObscuredTextFieldSample(),
          // child: HomePage(username: 'Thuong Trinh Van'),
        ),
      ),
    );
  }
}

void main() => runApp(const TextFieldExampleApp());
