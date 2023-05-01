
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';


class ImageAndAudio2Page extends StatefulWidget {
  const ImageAndAudio2Page({super.key,  required this.image, required this.audio, required this.audio2});
  final String image ;
  final String audio ;
  final String audio2 ;
  @override
  _ImageAndAudio2PageState createState() => _ImageAndAudio2PageState();
}

class _ImageAndAudio2PageState extends State<ImageAndAudio2Page> {


  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    return Container(
      width: 300,
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor3,
                  ),
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio(widget.audio),
                    );
                  },
                  child: Text('صوت الحيوان'),
                ),
                SizedBox(width: 90),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor3,
                  ),
                  onPressed: () {
                    assetsAudioPlayer.open(
                      Audio(widget.audio2),
                    );
                  },
                  child: Text('اسم الحيوان'),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
