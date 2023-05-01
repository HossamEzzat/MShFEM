import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/screens/homescreen.dart';


class OutLetters extends StatefulWidget {
  const OutLetters({Key? key}) : super(key: key);

  @override
  State<OutLetters> createState() => _OutLettersState();
}

class _OutLettersState extends State<OutLetters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: Text("مخارج الحروف"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()),
            );
          }, icon: Icon(
            Icons.arrow_back
        ),

        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Image.asset("assets/outlet/2.jpg",width: 300,
             height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/outlet/3.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/4.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/5.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/6.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/7.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/8.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/9.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/10.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/11.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/12.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/outlet/13.jpg",width: 300,
              height: 300,),



          ],
        ),
      ),
    );
  }
}
