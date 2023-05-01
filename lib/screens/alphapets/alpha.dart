import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';
import 'package:mshfem/image_and_audio_card.dart';
import 'package:mshfem/screens/homescreen.dart';


class ALPHAPPAGEPPAGE extends StatefulWidget {
  const ALPHAPPAGEPPAGE({Key? key}) : super(key: key);

  @override
  State<ALPHAPPAGEPPAGE> createState() => _ALPHAPPAGEPPAGEState();
}

class _ALPHAPPAGEPPAGEState extends State<ALPHAPPAGEPPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor3,
        centerTitle: true,
        title: const Text(" الحروف"),
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
            ImageAndAudioPage(audio: 'assets/outlet/a.ogg', image: 'assets/alphapet/الالف صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),  ImageAndAudioPage(image: 'assets/alphapet/الباء صو.jpg', audio: 'assets/outlet/b.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/C.ogg', image: 'assets/alphapet/التاء صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/D.ogg', image: 'assets/alphapet/الثاء صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(audio: 'assets/outlet/E.ogg', image: 'assets/alphapet/الجيم صو.jpg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الحاء صو.jpg', audio: 'assets/outlet/F.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الخاء صو.jpg', audio: 'assets/outlet/G.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الدال صو.jpg', audio: 'assets/outlet/H.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الذال صو.jpg', audio: 'assets/outlet/I.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الراء صو.jpg', audio: 'assets/outlet/J.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الزال صو.jpg', audio: 'assets/outlet/K.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/السين صو.jpg', audio: 'assets/outlet/L.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الشين صو.jpg', audio: 'assets/outlet/M.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الصاد صو.jpg', audio: 'assets/outlet/N.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الضاض صو.jpg', audio: 'assets/outlet/O.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الطاء صو.jpg', audio: 'assets/outlet/P.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الظاء صو.jpg', audio: 'assets/outlet/Q.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/العين صو.jpg', audio: 'assets/outlet/R.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الغين صو.jpg', audio: 'assets/outlet/S.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الفاء صو.jpg', audio: 'assets/outlet/T.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/القاف صو.jpg', audio: 'assets/outlet/U.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الكاف صو.jpg', audio: 'assets/outlet/V.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/اللام صو.jpg', audio: 'assets/outlet/W.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الميم صو.jpg', audio: 'assets/outlet/X.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/النون صو.jpg', audio: 'assets/outlet/Y.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الهاء صو.jpg', audio: 'assets/outlet/Z.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الواو صو.jpg', audio: 'assets/outlet/WAAW.ogg',),
            Divider(
              color: Colors.grey, // specify the color of the line
              height: 1, // specify the height of the line
              thickness: 1, // specify the thickness of the line
            ),
            ImageAndAudioPage(image: 'assets/alphapet/الياء صو.jpg', audio: 'assets/outlet/YAAAA.ogg',),




          ],
        ),
      ),
    );
  }
}
