import 'package:flutter/material.dart';
import 'package:sing_in/src/routes/routes.dart';
import 'package:sing_in/src/view/components/singin_widget.dart';
import 'package:sing_in/src/view/components/singup_widget.dart';
import 'package:sing_in/src/view/components/text_checkbox_register.dart';
import 'package:sing_in/src/view/login_page.dart';
import 'components/botton_circle.dart';
import 'components/check_box_widget.dart';
import 'components/textfild_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                            'Get Started',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                WidgetTextField(
                                  message: 'Digite seu Nome Completo',
                                  type: 'Name',
                                ),
                                WidgetTextField(
                                  message: 'Digite um e-mail valido',
                                  type: 'E-mail',
                                  validator: '@',
                                ),
                                WidgetTextField(
                                  message: 'Digite uma senha',
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
                                      ),
                                    ),
                                    TextCheckBox(),
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
                                  children: [
                                    const Text(
                                      'Sing Up',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 35),
                                    SingIn(
                                      navigation: () {
                                        Navigator.of(context).pushNamed(LOGIN);
                                      },
                                      fontSize: 12,
                                      bold: FontWeight.normal,
                                      underline: TextDecoration.underline,
                                    )
                                  ],
                                ),
                                BottonCircle(
                                  navigation: () {
                                    if (_formkey.currentState!.validate() &&
                                        check == true) {
                                      Navigator.of(context).pushNamed(LOGIN);
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
