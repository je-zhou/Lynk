import 'package:flutter/material.dart';

import 'package:govhack22/data/data.dart';

import 'home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Style.color4)),
      child: Scaffold(
        body: Column(children: [
          const SizedBox(height: 80),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    height: 200,
                    alignment: Alignment.center,
                    image: AssetImage('assets/lynk_login_logo.png'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // Email
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'School Email',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Style.color1)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Style.color1))),
                        autocorrect: false,
                        onChanged: (value) => {},
                      ),
                    ),
                    // Password
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Style.color1)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Style.color1))),
                        autocorrect: false,
                        onChanged: (value) => {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    activeColor: Style.color4,
                                    onChanged: (_) {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    value: showPassword,
                                  ),
                                  const Text('Show Password')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                            color: Colors.transparent,
                            child: const Text('Forgot Password?'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                      child: ElevatedButton(
                        onPressed: () => navigateToHome(context),
                        style: ElevatedButton.styleFrom(
                          primary: Style.color4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]))
        ]),
      ),
    );
  }
}

navigateToHome(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}
