import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void changeTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff0274BB),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  void initState() {
    changeTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: Color(0xff0274BB),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(
                            size.height * 0.9,
                            size.height * 0.5,
                          ),
                          bottomRight: Radius.elliptical(
                            size.height * 0.9,
                            size.height * 0.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Text(
                      "Let's Sign you In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff0274BB),
                        fontWeight: FontWeight.w600,
                        fontSize: size.height * 0.028,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      "Welcome back, you've been missed!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: size.height * 0.021,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    TextFieldWrapper(
                      size: size,
                      hint: "Username or E-Mail",
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.grey.shade700,
                            size: size.height * 0.04,
                          ),
                          hintText: "Type Username/E-Mail",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: size.height * 0.0185,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    TextFieldWrapper(
                      size: size,
                      hint: "Password",
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: Colors.grey.shade700,
                            size: size.height * 0.04,
                          ),
                          hintText: "Type Password",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: size.height * 0.0185,
                          ),
                          suffix: Text(
                            "Forget?",
                            style: TextStyle(
                              fontSize: size.height * 0.019,
                              color: Color(0xff0274BB),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.1),
                    MaterialButton(
                      minWidth: size.width * 0.85,
                      color: Color(0xffFD8701),
                      textColor: Colors.white,
                      onPressed: () {},
                      height: size.height * 0.06,
                      child: Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: size.height * 0.11,
              child: Container(
                padding: EdgeInsets.all(size.height * 0.02),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.5,
                      spreadRadius: 0.5,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: Image.asset(
                  'asset/Icon.png',
                  height: size.height * 0.12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWrapper extends StatelessWidget {
  const TextFieldWrapper({
    required this.size,
    required this.hint,
    required this.child,
  });

  final Size size;
  final String hint;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$hint',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: size.height * 0.018,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          child,
        ],
      ),
    );
  }
}
