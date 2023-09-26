import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final textEditingController = TextEditingController();
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();
  final textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/pic2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.8,
        )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
            child: const Text('OTP Verification',
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                              border: UnderlineInputBorder(),
                              counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                            border: UnderlineInputBorder(),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                            border: UnderlineInputBorder(),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                            border: UnderlineInputBorder(),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                            border: UnderlineInputBorder(),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                        height: 80.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          // controller: widget.textEditingController,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 131, 100, 1.0),
                          ),
                          decoration: InputDecoration(
                            // fillColor: Color.fromRGBO(255, 131, 100, 0.5),
                            border: UnderlineInputBorder(),
                            counterText: '',
                          ),
                        ),
                      ),
                    ],
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
                                onPressed: () {},
                                child: const Text(
                                  'Submit',
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
                      const Text('OTP not received?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                          )),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: const Text('Resend',
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
