import 'package:flutter/material.dart';
import 'package:sing_in/src/routes/routes.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPage createState() => _NextPage();
}

class _NextPage extends State<NextPage> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Logado',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(LOGIN);
                        },
                        child: const Text(
                          'Retornar para tela de login',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
