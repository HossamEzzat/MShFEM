import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/ImageAndAudio2.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/screens/homescreen.dart';


class Animal extends StatefulWidget {
  const Animal({Key? key}) : super(key: key);

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: const Text("الحيوانات"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()),
            );
          }, icon: const Icon(
            Icons.arrow_back
        ),

        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageAndAudio2Page (audio: 'assets/anm/ARNAP1.mp3', image: 'assets/anm/ارنب صو.jpg', audio2: 'assets/anm/ARNAP2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),  ImageAndAudio2Page (image: 'assets/anm/بطة صو.jpg', audio: 'assets/anm/BATA1.mp3', audio2: 'assets/anm/BATA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (audio: 'assets/anm/BAKARA1.mp3', image: 'assets/anm/بقرة صو.jpg', audio2: 'assets/anm/BAKARA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (audio: 'assets/anm/ASFORA1.mp3', image: 'assets/anm/عصفورة صو.jpg', audio2: 'assets/anm/ASFORA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (audio: 'assets/anm/CAMAL1.mp3', image: 'assets/anm/جمل صو.jpg', audio2: 'assets/anm/CAMAL2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/cat.jpg', audio: 'assets/anm/CAT1.mp3', audio2: 'assets/anm/CAT2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/كتكوت صو.jpg', audio: 'assets/anm/CATCOOT1.mp3', audio2: 'assets/anm/CATCOOT2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/خروف صو.jpg', audio: 'assets/anm/CHEEP1.mp3', audio2: 'assets/anm/CHEEP2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/ديك رومي صو.jpg', audio: 'assets/anm/DEEK ROMY1.mp3', audio2: 'assets/anm/DEEK ROMY2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/ديك صو.jpg', audio: 'assets/anm/DEEK1.mp3', audio2: 'assets/anm/DEEK2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/دب صو.jpg', audio: 'assets/anm/DOP1.mp3', audio2: 'assets/anm/DOP2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/فار صو.jpg', audio: 'assets/anm/FAR1.mp3', audio2: 'assets/anm/FAR2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/فرخة صو.jpg', audio: 'assets/anm/FARGHA1.mp3', audio2: 'assets/anm/FARGA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/فيل صو.jpg', audio: 'assets/anm/FEEL1.mp3', audio2: 'assets/anm/FEEL2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/حمار صو.jpg', audio: 'assets/anm/DOKEY1.mp3', audio2: 'assets/anm/DONKEY2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/غزالة صو.jpg', audio: 'assets/anm/GAZALA1.mp3', audio2: 'assets/anm/GAZALA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/ماعز صو.jpg', audio: 'assets/anm/GOAT1.mp3', audio2: 'assets/anm/GOAT2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/غراب صو.jpg', audio: 'assets/anm/GORAP1.mp3', audio2: 'assets/anm/GORAP2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/حمامة صو.jpg', audio: 'assets/anm/HAMAMA1.mp3', audio2: 'assets/anm/HAMAMA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/حمار وحشي صو.jpg', audio: 'assets/anm/HOMAR WAHSHE1.mp3', audio2: 'assets/anm/HOMAR WAHSHE2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/حصان صو.jpg', audio: 'assets/anm/HORSE1.mp3', audio2: 'assets/anm/HORSE2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/اسد صو.jpg', audio: 'assets/anm/LION1.mp3', audio2: 'assets/anm/LION2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/حمار صو.jpg', audio: 'assets/anm/MONKEY1.mp3', audio2: 'assets/anm/MONKEY2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/نعامة صو.jpg', audio: 'assets/anm/NAAMA1.mp3', audio2: 'assets/anm/NAAMA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/ثعبان صو.jpg', audio: 'assets/anm/SNAK1.mp3', audio2: 'assets/anm/SNAK2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/سلحفاة صو.jpg', audio: 'assets/anm/SOLHEFA1.mp3', audio2: 'assets/anm/SOLHEFA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/تمساح صو.jpg', audio: 'assets/anm/TEMSAH1.mp3', audio2: 'assets/anm/TEMSAH2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/ثعلب صو.jpg', audio: 'assets/anm/THALAB1.mp3', audio2: 'assets/anm/THALAB2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/نمر صو.jpg', audio: 'assets/anm/TIGER1.mp3', audio2: 'assets/anm/TIGER2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/وزة صو.jpg', audio: 'assets/anm/WEEZA1.mp3', audio2: 'assets/anm/WEEZA2.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudio2Page (image: 'assets/anm/زرافة صو.jpg', audio: 'assets/anm/ZARAFA.ogg', audio2: 'assets/anm/ZARAFA1.mp3',),


          ],
        ),
      ),
    );
  }
}
