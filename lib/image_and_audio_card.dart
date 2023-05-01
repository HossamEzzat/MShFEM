
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';


class ImageAndAudioPage extends StatefulWidget {
  const ImageAndAudioPage({super.key,  required this.image, required this.audio});
final String image ;
final String audio ;
  @override
  _ImageAndAudioPageState createState() => _ImageAndAudioPageState();
}

class _ImageAndAudioPageState extends State<ImageAndAudioPage> {


  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    return Container(
      width: 300,
      height: 300,
      child:

         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor3,
              ),
              onPressed: () {
                assetsAudioPlayer.open(
                  Audio(widget.audio),
                );
              },
              child: Text('تشغيل'),
            )
          ],
        ),

    );
  }
}
