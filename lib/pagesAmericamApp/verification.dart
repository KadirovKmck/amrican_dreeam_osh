import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pinput/pinput.dart';

import '../constant/constants.dart';

class Veritification extends StatefulWidget {
  const Veritification({super.key});

  @override
  State<Veritification> createState() => _VeritificationState();
}

class _VeritificationState extends State<Veritification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgrundColor,
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                color: cColor),
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    top: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 36,
                        color: cBackgrundColor,
                      ),
                    )),
                Positioned(
                  width: 233,
                  height: 30,
                  left: 20,
                  top: 80,
                  child: Text(
                    'OTP verification',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: cBackgrundColor),
                  ),
                ),
                Positioned(
                  width: 260,
                  height: 40,
                  left: 20,
                  top: 120,
                  child: Text(
                    'Please enter your correct OTP for number verification process.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: cBackgrundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: cSizedBoxH75),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: Pinput(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                  height: 55,
                  width: 55,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: cNumColor,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: cBackgrundColor,
                      border: Border.all(color: cActive, width: 1.5)),
                ),
              ),
            ),
          ),
          Expanded(child: cSizedBoxH55),
          Positioned(
            child: InkWell(
              onTap: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Center(
                              child: LoadingAnimationWidget.hexagonDots(
                                color: cActive,
                                size: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Verify'.toUpperCase(),
                    style: cTextStyle,
                  ),
                ),
                width: 320,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: cActive),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Resend OTP',
              style: cTextStyleRec,
            ),
          ),
          SizedBox(
            width: 80,
            height: 10,
            child: Divider(
              color: cActive,
              thickness: 1,
            ),
          ),
          cSizedBoxH55
        ],
      ),
    );
  }
}
