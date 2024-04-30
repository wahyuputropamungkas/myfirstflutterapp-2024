import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  const Login({super.key});

  @override
  State<Login> createState() => _Login();

}

class _Login extends State<Login> {

  bool visiblePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/Logos/logo.png", scale: 2),
              const Text(
                "Sign in to your account",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF004643),
                  fontWeight: FontWeight.w600
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24
                ),
                child: const Text(
                  "Emails address",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter your email address",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 1
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 24,
                    right: 24
                ),
                child: const Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFC4C4C4),
                            width: 1
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    suffixIcon: GestureDetector(
                      child: Image.asset(visiblePassword ? "assets/Icons/eye-on.png" : "assets/Icons/eye-off.png", scale: 3),
                      onTap: () {
                        setState(() {
                          visiblePassword = !visiblePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: !visiblePassword,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  top: 20
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: const Text(
                  "Forgot password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF757575)
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: Row(
                  children: [
                    Container(
                      width: Checkbox.width + 5,
                      height: Checkbox.width + 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF4F4F4),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "I've read and agreed to ",
                            style: TextStyle(
                              color: Color(0xFF757575)
                            )
                          ),
                          TextSpan(
                            text: "User Agreement ",
                            style: TextStyle(
                              color: Color(0xFF004643)
                            )
                          ),
                          TextSpan(
                            text: "and ",
                            style: TextStyle(
                                color: Color(0xFF757575)
                            )
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                                color: Color(0xFF004643)
                            )
                          )
                        ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}