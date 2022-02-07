import 'package:flutter/material.dart';
import 'package:sing_in/src/view/components/singin_widget.dart';
import 'package:sing_in/src/view/components/singup_widget.dart';
import 'components/botton_circle.dart';
import 'components/check_box_widget.dart';
import 'components/textfild_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: const Color(0xFF1E1E1E),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/logo/ftean.png',
                height: 200,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 450,
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Color(0xFFEAEAEA),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const WidgetTextFild(
                        type: 'Name',
                      ),
                      const WidgetTextFild(
                        type: 'E-mail',
                      ),
                      const WidgetTextFild(
                        type: 'Password',
                      ),
                      Row(
                        children: [
                          const WidgetCheckBox(),
                          const Text(
                            'I agree to the ',
                            style: TextStyle(fontSize: 13),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Terms of Service ',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                          const Text('and ',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13)),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 130,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SignUp(
                                  fontSize: 20,
                                  bold: FontWeight.bold,
                                  underline: TextDecoration.none,
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                SingIn(
                                  fontSize: 12,
                                  bold: FontWeight.normal,
                                  underline: TextDecoration.underline,
                                )
                              ],
                            ),
                            const BottonCircle(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
