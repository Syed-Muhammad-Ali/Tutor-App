import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/accept_tutor_tile.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';
import 'package:megamind/AppModule/Utlis/app_config.dart';
import 'package:megamind/AppModule/Utlis/funckey_message_popup.dart';

class tutor_request_list extends StatefulWidget {
  const tutor_request_list({Key? key}) : super(key: key);

  @override
  _tutor_request_listState createState() => _tutor_request_listState();
}

class _tutor_request_listState extends State<tutor_request_list> {
  bool is_confirmed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConfig(context).width - 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            simpleTitleText(text: "Tutor Request"),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GFImageOverlay(
                          height: 50,
                          width: 50,
                          shape: BoxShape.circle,
                          color: Colors.green,
                          image: AssetImage('assets/home/tuteeProfile.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Numan SHakir',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              // SizedBox(height: 10,),

                              Text(
                                '12 year old',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (is_confirmed)
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: CustomColor.primaryButtonColor),
                                  height: 30,
                                  width: 70,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        "Confirmed",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    is_confirmed = false;
                                  });
                                },
                                child: Icon(
                                  Icons.cancel_rounded,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                              if (!is_confirmed)
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return FunkyOverlay(
                                          isTremor: true,
                                          child: accept_tutor_tile(
                                              context: context,
                                              Delcallback: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  is_confirmed = !is_confirmed;
                                                });
                                              },
                                              Cancelcallback: () {
                                                Navigator.pop(context);
                                              }),
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.check_circle,
                                    color: CustomColor.primaryButtonColor,
                                    size: 30,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
