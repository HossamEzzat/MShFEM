import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/image_and_audio_card.dart';
import 'package:mshfem/screens/homescreen.dart';


class Vegtables extends StatefulWidget {
  const Vegtables({Key? key}) : super(key: key);

  @override
  State<Vegtables> createState() => _VegtablesState();
}

class _VegtablesState extends State<Vegtables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: const Text("الخضروات"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }, icon: const Icon(
            Icons.arrow_back
        ),

        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageAndAudioPage(audio: 'assets/veg/arnabit.ogg', image: 'assets/veg/arnabit ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),  ImageAndAudioPage(image: 'assets/veg/felfel ph.jpg', audio: 'assets/veg/felfel.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/veg/felfel red.ogg', image: 'assets/veg/felfel red.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/veg/gazar.ogg', image: 'assets/veg/gazer ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/veg/khas.ogg', image: 'assets/veg/khas ph.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/khyar.jpg', audio: 'assets/veg/khyar.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/kornp ph.jpg', audio: 'assets/veg/koronp.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/kosa ph.jpg', audio: 'assets/veg/kosa.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/limona ph.jpg', audio: 'assets/veg/limona.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/pamya ph.jpg', audio: 'assets/veg/pamya.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/pasal ph.jpg', audio: 'assets/veg/pasal.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/pasal green ph.jpg', audio: 'assets/veg/pasal green.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),

            ImageAndAudioPage(image: 'assets/veg/patata ph.jpg', audio: 'assets/veg/patata.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/patats ph.jpg', audio: 'assets/veg/patats.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/patngan ph.jpg', audio: 'assets/veg/patngan.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/pesla ph.jpg', audio: 'assets/veg/pesla.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/tamatm ph.jpg', audio: 'assets/veg/tamatm.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/veg/tom.jpg', audio: 'assets/veg/tom.ogg',),



          ],
        ),
      ),
    );
  }
}
