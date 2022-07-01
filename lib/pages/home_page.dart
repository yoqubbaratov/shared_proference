import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_proference/pages/create_accaunt_page.dart';
import 'package:shared_proference/services/prof_service.dart';
import 'dart:core';
import '../model/user_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    final user = User.from(email: email, password: password);
    Prefs.storeUser(user);
    //
    // Prefs.loadUser().then((e) => {
    //   print(e?.email)
    // });
    print(user.password);
    print(user.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // #image
              const Image(
                image: AssetImage("assets/images/img.png"),
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              // #text
              const Text(
                "Welcome back!",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // #text
              const Text(
                "Log in to your existans accaunt of Q Allure",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // #email
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 60,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    icon: Icon(CupertinoIcons.person, color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // #password
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 60,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(CupertinoIcons.lock, color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              // #forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              // #login button
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue.shade700,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Color.fromRGBO(25, 73, 158, 158),
                      ),
                    ),
                  ),
                ),
                onPressed: _doLogin,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // #text
              const Text(
                "Or connect using",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 25,
              ),
              // #facebook google button
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: SizedBox(
                        height: 45,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.facebook_outlined,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.red,
                        ),
                      ),
                      child: SizedBox(
                        height: 45,
                        child: Row(
                          children: const [
                            Image(
                              image: AssetImage("assets/icons/img.png"),
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // #text Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have n accaunt?"),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Create()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
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
