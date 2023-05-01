import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/image_and_audio_card.dart';
import 'package:mshfem/screens/homescreen.dart';

class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: const Text("الفواكه"),
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
            ImageAndAudioPage(audio: 'assets/outlet/ANANAS.ogg', image: 'assets/outlet/اناناس صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),  ImageAndAudioPage(image: 'assets/outlet/تفاح صو.jpg', audio: 'assets/outlet/APPLE.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/BATTEG.ogg', image: 'assets/outlet/بطيخ صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/ENAP.ogg', image: 'assets/outlet/عنب.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/FARAWLA.ogg', image: 'assets/outlet/فراولة صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/جوافة صو.jpg', audio: 'assets/outlet/GAWAFA.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/كيوي صو.jpg', audio: 'assets/outlet/KEEWI.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/خوخ صو.jpg', audio: 'assets/outlet/KHOOKH.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/كمتري صو.jpg', audio: 'assets/outlet/KOMETRA.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/مانجة صو.jpg', audio: 'assets/outlet/MANGA.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/مشمش صو.jpg', audio: 'assets/outlet/MESHMESH.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/عنب احمر صو.jpg', audio: 'assets/outlet/RED ENAP.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/تين صو.jpg', audio: 'assets/outlet/TEEN.ogg',),



          ],
        ),
      ),
    );
  }
}
