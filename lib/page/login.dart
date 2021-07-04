import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool togglevisibilty = false;
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
            reverse: true,
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/169393807_3769730173146153_1447273600101580803_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=Iw38gHkSWT4AX-R1_L-&_nc_ht=scontent.fktm8-1.fna&oh=2d554f168e46cdd46d8f3af547ac83fa&oe=60E5B73F',
                ),
                radius: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      focusColor: Colors.green,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: " Enter the Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: togglevisibilty,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (password) =>
                      password != null && password.length < 5
                          ? 'Enter the min 5 password'
                          : null,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    focusColor: Colors.green,
                    hintText: " Enter the password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          togglevisibilty = !togglevisibilty;
                        });
                      },
                      icon: togglevisibilty
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildPadding(),
            ].reversed.toList()),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
