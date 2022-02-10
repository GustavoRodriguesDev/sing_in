import 'package:flutter/material.dart';

import 'package:sing_in/src/routes/routes.dart';
import 'package:sing_in/src/view/components/botton_circle.dart';
import 'package:sing_in/src/view/components/check_box_widget.dart';
import 'package:sing_in/src/view/components/singin_widget.dart';
import 'package:sing_in/src/view/components/singup_widget.dart';
import 'package:sing_in/src/view/components/textfild_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  bool check = false;

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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/logo/ftean.png',
                    height: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                            'Welcome back',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                WidgetTextField(
                                  validator: '@',
                                  type: 'E-mail',
                                  message: 'Digite um e-mail valido',
                                ),
                                WidgetTextField(
                                  message: 'Digite sua senha',
                                  type: 'Password',
                                  obscure: true,
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          check = !check;
                                          setState(() {});
                                        },
                                        child: WidgetCheckBox(
                                          check: check,
                                        )),
                                    const Text(
                                      'Remember me ',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        'Forgot password?',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 13,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                                    Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    SignUp(
                                      fontSize: 12,
                                      bold: FontWeight.normal,
                                      underline: TextDecoration.underline,
                                    )
                                  ],
                                ),
                                BottonCircle(
                                  navigation: () {
                                    if (_formkey.currentState!.validate()) {
                                      Navigator.of(context).pushNamed(NEXT);
                                    }
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
