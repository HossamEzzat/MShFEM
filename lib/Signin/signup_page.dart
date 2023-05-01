import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mshfem/Signin/signin_page.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/const/constants.dart';
import 'package:page_transition/page_transition.dart';





class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkeyup = GlobalKey<FormState>();
  var emailSignupController=TextEditingController();
  var passwordSignupController=TextEditingController();
  bool secsignup = true;


  var visiblesignup = const Icon(Icons.visibility, color: Color(0xff4c5166));

  var visibleoffsignup = const Icon(Icons.visibility_off, color: Color(0xff4c5166));
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SignUPBody(),
    );
  }
  Future SignUp() async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailSignupController.text, password: passwordSignupController.text);

    }on FirebaseAuthException catch(e){
      print(e);
      Utils.showSnackBar(e.message);

    }

  }
  Widget SignUPBody(){
    Size size = MediaQuery.of(context).size;
   return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/sign up.png'),
              const Text(
                'اشتراك',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailSignupController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* مطلوب";
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
                  contentPadding: EdgeInsets.only(left: 10, top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff4c5166),
                  ),
                  hintText: "عنوان البريد الإلكتروني",
                  helperStyle: TextStyle(color: Colors.black38),
                ),
              ),

              TextFormField(
                controller: passwordSignupController,
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
                obscureText: secsignup,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 10, top: 14),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xff4c5166),
                  ),
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          secsignup = !secsignup;
                        });
                      },
                      icon: secsignup ? visiblesignup : visibleoffsignup),
                  hintText: "كلمة المرور",
                  helperStyle: const TextStyle(color: Colors.black38),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
                  GestureDetector(
                  onTap: () {

                      SignUp();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const SignIn()),
                      );

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
                        'اشتراك',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'لديك حساب؟',
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'تسجيل الدخول',
                        style: TextStyle(
                          color: kPrimaryColor3,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));

  }
  /*Future<UserCredential> signUpWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount!.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }*/


}

class Utils {
   static GlobalKey<ScaffoldMessengerState> messengerKey=GlobalKey<ScaffoldMessengerState>();
   static showSnackBar(String? text){
    if(text==null) return ;
    final snackBar=SnackBar(content: Text(text),backgroundColor: Colors.red,);
    messengerKey.currentState!..removeCurrentSnackBar()..showSnackBar(snackBar);
  }
}
