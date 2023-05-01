import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:mshfem/Signin/signup_page.dart';
import 'package:page_transition/page_transition.dart';
import '../const/constant.dart';
import '../const/constants.dart';
import '../screens/homescreen.dart';
import 'forgot_password.dart';



class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool sec = true;

  var visible = const Icon(Icons.visibility, color: Color(0xff4c5166));

  var visibleoff = const Icon(Icons.visibility_off, color: Color(0xff4c5166));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
         if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return Login() ;
          }
        },
      ),
    );
  }

  Widget Login() {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SvgPicture.asset(
                  'assets/Recess-amico.svg',
                  fit: BoxFit.cover,
                ),
              )
                  ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buildemail(),
              const SizedBox(
                height: 15,
              ),
              buildPassword(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    SignIn();
                  }
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: kPrimaryColor3,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const ForgotPassword(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'هل نسيت كلمة السر؟',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      const TextSpan(
                        text: 'إعادة التعيين هنا',
                        style: TextStyle(
                          color: kPrimaryColor3,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('أو'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignUp(), type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'جديد في التطبيق؟',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      const TextSpan(
                        text: 'سجل',
                        style: TextStyle(
                          color: kPrimaryColor3,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildemail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "بريد إلكتروني",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60,
          decoration: BoxDecoration(
              color: const Color(0xffebefff),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 2),
                )
              ]),
          child: TextFormField(
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return "* مطلوب";
              } else if (value.length < 6) {
                return "أدخل بريدًا إلكترونيًا صالحًا";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10, top: 16),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff4c5166),
              ),
              hintText: "عنوان البريد الإلكتروني",
              helperStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "كلمة المرور",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60,
          decoration: BoxDecoration(
              color: const Color(0xffebefff),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 2),
                )
              ]),
          child: TextFormField(
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return "* مطلوب";
              } else if (value.length < 6) {
                return "يجب أن تتكون كلمة المرور من 6 أحرف على الأقل";
              } else if (value.length > 15) {
                return "يجب ألا تزيد كلمة المرور عن 15 حرفًا";
              } else {
                return null;
              }
            },
            obscureText: sec,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(
                left: 10,
              ),
              prefixIcon: const Icon(
                Icons.password,
                color: Color(0xff4c5166),
              ),
              suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      sec = !sec;
                    });
                  },
                  icon: sec ? visible : visibleoff),
              hintText: "كلمة المرور",
              helperStyle: const TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Future SignIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      _showMyDialog(e.toString());
    }
  }

  Future<void> _showMyDialog(String x) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('خطأ'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(x),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('يعتمد'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  /*Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =  await googleSignInAccount!.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }*/
}
