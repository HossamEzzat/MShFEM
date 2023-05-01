import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/image_and_audio_card.dart';
import 'package:mshfem/screens/homescreen.dart';


class color extends StatefulWidget {
  const color({Key? key}) : super(key: key);

  @override
  State<color> createState() => _colorState();
}

class _colorState extends State<color> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: const Text(" الالوان"),
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
            ImageAndAudioPage(audio: 'assets/outlet/black.ogg', image: 'assets/outlet/black ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),  ImageAndAudioPage(image: 'assets/outlet/blue ph.jpg', audio: 'assets/outlet/blue.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/Brown.ogg', image: 'assets/outlet/Brown ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/green.ogg', image: 'assets/outlet/green ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/red.ogg', image: 'assets/outlet/red ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/Rosase ph.jpg', audio: 'assets/outlet/rosase.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/outlet/yellow ph.jpg', audio: 'assets/outlet/yellow.ogg',),




          ],
        ),
      ),
    );
  }
}
