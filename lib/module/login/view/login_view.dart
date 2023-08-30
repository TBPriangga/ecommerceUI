import 'package:flutter/material.dart';
import 'package:uiecommerce/core.dart';
import 'package:uiecommerce/core/theme/theme_config.dart';
import 'package:uiecommerce/core/widget/button/button.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome\nto Ecommerce",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Get access to your Orders, Wishlist and Recommendations",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 180.0,
                    height: 180.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Spacer(),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  const Icon(
                    Icons.visibility,
                    size: 24.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Login",
                OnPressed: () => Get.offAll(const MainNavigationView()),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordView(),
                    )),
                child: Text(
                  "Forgot password",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
              const Spacer(),
              QButton(
                  label: "Sign up",
                  color: Colors.grey,
                  OnPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterView()))),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
