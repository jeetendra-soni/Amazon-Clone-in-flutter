import 'package:flutter/material.dart';

class SignIn_Screen extends StatefulWidget {
  static const routeName = '/signIn_screen';
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  State<SignIn_Screen> createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:Image.asset("assets/images/amazon.jpg", height: 60,),
            centerTitle: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Text("Sign in with your email and password."),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Sign In", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){}, child: const Text("Forgot password?", style: TextStyle(fontSize: 15)))
                      ],
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)
                        ),
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)
                        ),
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(height: 20),

                    CheckboxListTile(value: false, onChanged: (value){}, title: const Text("Show Password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                    CheckboxListTile(value: false, onChanged: (value){}, title: const Text("Keep me signed in", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 40,
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                      )
                    ),
                    const SizedBox(height: 10),
                    const Divider(thickness: 1, color: Colors.black45,),
                    const SizedBox(height: 5),

                    const Text("New To AmazonClone"),
                    const SizedBox(height: 20),
                    GestureDetector(
                        onTap: (){},
                        child: Container(
                            height: 40,
                            width: double.maxFinite,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.orange.shade50,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Text("Create a new account",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                        )
                    ),
                    SizedBox(height: 150),
                    TextButton(onPressed: (){}, child: Text("Conditions of Use Privacy Notice", style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}