import 'package:flutter/cupertino.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class credit_Card_tile extends StatelessWidget {
  const credit_Card_tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(right: 20, bottom: 10, left: 20),
      child:

      Container(

        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:  Color(0xFF633DF6)
        ),
        child: Stack(
          children: [
            Positioned(

              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),topRight: Radius.circular(30),),
                    color: Color(0xFF7930E2)
                ),

                height: 75,
                width: 150,
              ),
              top: 0,
              right: 0,
            ),
            Positioned(

              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only( topRight: Radius.circular(100),bottomLeft: Radius.circular(30),),
                    color:  Color(0xFF7930E2)
                ),

                height: 75,
                width: 150,
              ),
              left: 0,bottom: 0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        subHeadingwhite(text: "Ahmed"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        subHeadingwhite(text: "**************** 123"),
                        subHeadingwhite(text: "9/10"),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
