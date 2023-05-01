import 'package:flutter/material.dart';
import 'package:mshfem/const/constant.dart';



class RecommendedPlantcard extends StatelessWidget {
   const RecommendedPlantcard({
    Key? key,
    required this.size, required this.plantname, required this.plantcountry, required this.image,
  }) : super(key: key);

  final Size size;

  final String plantname;
  final String plantcountry;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only
        (left: kDefaultPadding/2,
        top: kDefaultPadding/3,
        bottom: kDefaultPadding*0.4,
        right: kDefaultPadding/2,

      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap:(){

            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(offset: const Offset(0,10),blurRadius: 50,color: kPrimaryColor3.withOpacity(0.3)),
                ],
              ),
              child: Row(

                children: [
                  RichText(text:TextSpan(
                      children: [
                        TextSpan(text: plantname.toUpperCase(),style: Theme.of(context).textTheme.button),

                        TextSpan(text: plantcountry.toUpperCase(),style: const TextStyle(
                          color:Color.fromRGBO(48, 64, 34, 100),
                        )),


                      ]
                  )),



                ],
              ),

            ),
          ),


        ],
      ),
    );
  }
}


