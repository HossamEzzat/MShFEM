
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/Signin/signin_page.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/const/constants.dart';
import 'package:page_transition/page_transition.dart';




class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
var emailController_forget=TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalKey<FormState> formkeyresert = GlobalKey<FormState>();

    return Form(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/Reset password-amico.png'),
                SizedBox(height: 15,),
                const Text(
                  'هل نسيت كلمة السر',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller:emailController_forget,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* مطلوب";
                    }else if (value.length < 6) {
                      return "أدخل بريدًا إلكترونيًا صالحًا";
                    }
                    else {
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
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                      Forgetpassword();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SignIn()),
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
                        'إعادة تعيين كلمة المرور',
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
                            child: SignIn(),
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
          ),
        ),
      ),
    );
  }
  Future Forgetpassword() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController_forget.text.trim() );
      _showMyDialogRESET();

    }on FirebaseAuthException catch(e){
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
              children:  <Widget>[
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
  Future<void> _showMyDialogRESET() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('انتظر'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('تحقق من Gmail الخاص بك'),
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


}

