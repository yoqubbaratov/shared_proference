import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_proference/model/create_modelss.dart';
import 'package:shared_proference/pages/home_page.dart';

import '../services/prof_service.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final conPasswordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String fullName = fullNameController.text.toString().trim();
    String phoneNumber = phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String conPassword = conPasswordController.text.toString().trim();
    final createAC = CreateAC.from(phoneNumber: phoneNumber, fullName: fullName, email: email, password: password, conPassword: conPassword);

    Prefs.createAC(createAC);

    print(createAC.fullName);
    print(createAC.email);
    print(createAC.phoneNumber);
    print(createAC.password);
    print(createAC.conPassword);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: OutlinedButton(
          onPressed: (){
            Navigator.pop(
              context,
                MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // #Lets get started
            const Text(
              "Let's Get Started!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create an accaunt to Q Alure to get all features",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            // #name
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child:  TextField(
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                // controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Jhonne Willeams",
                  border: InputBorder.none,
                  icon: Icon(CupertinoIcons.person, color: Colors.blue),
                ),
                controller: fullNameController,
              ),
            ),
            const SizedBox(
              height: 15,
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
              child:  TextField(
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                // controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  icon: Icon(Icons.email_outlined, color: Colors.blue),
                ),
                controller: emailController,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // #phone
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child:  TextField(
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                // controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  border: InputBorder.none,
                  icon: Icon(CupertinoIcons.device_phone_portrait,
                      color: Colors.blue),
                ),
                controller: phoneController,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // #password
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child:  TextField(
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                // controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  icon: Icon(CupertinoIcons.lock, color: Colors.blue),
                ),
                controller: passwordController,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // #Confirm password
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child:  TextField(
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                // controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                  icon: Icon(CupertinoIcons.lock, color: Colors.blue),
                ),
                controller: conPasswordController,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // #create button
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
                    "CREATE",
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
              height: 50,
            ),
            // #text Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Alredy have an accaunt?"),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: const Text(
                    'Login here',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
