import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/screens/homescreen.dart';

class Artu extends StatefulWidget {
  const Artu({Key? key}) : super(key: key);

  @override
  State<Artu> createState() => _ArtuState();
}

class _ArtuState extends State<Artu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: Text("اضطرابات النطق"),
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
            Image.asset("assets/artu/2.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/artu/3.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/4.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/5.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/6.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/7.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/8.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/9.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/10.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/11.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/12.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/13.jpg",width: 300,
              height: 300,),
            Image.asset("assets/artu/14.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/artu/15.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/16.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/17.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/18.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/19.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/20..jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/21.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/22.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/23.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/24.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/25.jpg",width: 300,
              height: 300,),
            Image.asset("assets/artu/26.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/artu/27.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/28.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/29.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/30.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/31.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/32.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/33.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/34.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/35.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/36.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/37.jpg",width: 300,
              height: 300,),
            Image.asset("assets/artu/38.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/artu/39.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/40.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/41.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/42.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/43.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/44.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/45.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/46.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/47.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/48.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/49.jpg",width: 300,
              height: 300,),

            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ), Image.asset("assets/artu/50.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/51.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/52.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/53.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/54.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/55.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/56.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/57.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            Image.asset("assets/artu/58.jpg",width: 300,
              height: 300,),
            const Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),




          ],
        ),
      ),
    );
  }
}
