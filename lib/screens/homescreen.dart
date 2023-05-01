import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/Signin/signin_page.dart';
import 'package:mshfem/card.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/screens/%D8%A7%D8%B6%D8%B7%D8%B1%D8%A7%D8%A8%D8%A7%D8%AA/artcu.dart';
import 'package:mshfem/screens/%D9%85%D8%AE%D8%A7%D8%B1%D8%AC%20%D8%A7%D9%84%D8%AD%D8%B1%D9%88%D9%81/outletter.dart';
import 'package:mshfem/screens/alphapets/alpha.dart';
import 'package:mshfem/screens/animal/animal.dart';
import 'package:mshfem/screens/color/color.dart';
import 'package:mshfem/screens/fruits/fruits.dart';
import 'package:mshfem/screens/vegtables/Vegta.dart';




import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar:AppBar(
        title: const Text("منطقة التعلم"),
        centerTitle: true,
        backgroundColor: kPrimaryColor3,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              _showBottomSheet(context);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(48, 64, 34, 100),
              ),
              accountName: Text(_auth.currentUser!.displayName.toString()),
              accountEmail: Text(_auth.currentUser!.email.toString()),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,

              ),
            ),


            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('تسجيل الخروج'),
              onTap: () {
                signOut();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            children: [


              Expanded(
                child :ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(height: 20,),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: const OutLetters(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'مخارج الحروف\n', plantcountry: 'تعلم كل شي عن مخارج الحروف ', image: 'assets/outlet/1.jpg',)

                        ),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: const Artu(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'علاج اضطرابات النطق\n', plantcountry: 'تعلم كل شي عن كيفية علاج اضطرابات النطق ', image: 'assets/artu/1.jpg',)

                        ),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child:const ALPHAPPAGEPPAGE(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'الحروف\n', plantcountry: 'تعلم كل شي عن الحروف ', image: 'assets/aplphapets.jpg',)),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,PageTransition(child: const color(),
                                  type: PageTransitionType.bottomToTop));},
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'الالوان\n', plantcountry: 'تعلم كل شي عن الالوان ', image: 'assets/colors.jpg',)),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child:  const Fruits(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'فواكه\n', plantcountry: 'تعلم كل شي عن الفواكه ', image: 'assets/veg_fruit.jpg',)

                        ),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child:  const Vegtables(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'الخضروات\n', plantcountry: 'تعلم كل شي عن الخضروات ', image: 'assets/pasala.jpg',)),
                        const SizedBox(height: 5,),
                        const Divider(
                          color: Colors.grey, // specify the color of the line
                          height: 1, // specify the height of the line
                          thickness: 1, // specify the thickness of the line
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,PageTransition(child:const Animal(),
                                  type: PageTransitionType.bottomToTop));},
                            child: RecommendedPlantcard(size: size*2.5, plantname: 'حيوانات\n', plantcountry: 'تعلم كل شي عن الحيوانات ', image: 'assets/Pandas-pana.png',)),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> signOut() async {
    await _auth.signOut();
    Navigator.pushReplacement(
        context,
        PageTransition(
            child:  const SignIn(),
            type: PageTransitionType.bottomToTop));

    print('User signed out');
  }
}
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "مصطفي رضا حسين حسن\nاسراء السيد عبدالعظيم ابراهيم \nشيماء محمد عزت حسن\nمي محمد علي احمد\nفاطمه عبدالمجيد مدكور",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor3,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('غلق'),
            ),
          ],
        ),
      );
    },
  );
}
