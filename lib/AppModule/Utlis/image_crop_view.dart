// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:profyhl/Theme/app_Colors.dart';
// import 'package:profyhl/utils/image_picker.dart';
// import 'package:profyhl/views/profile/controller/profile_controller.dart';
// class select_profile_pic_view extends StatelessWidget {
//   select_profile_pic_view({Key key}) : super(key: key);
//   final controller = Get.put(profile_control());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(7),
//                         bottomLeft: Radius.circular(7)),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           spreadRadius: 1,
//                           blurRadius: 1)
//                     ]),
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 15, right: 25, top: 60, bottom: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Get.back();
//                           print("Menu option Start");
//                         },
//                         child: Icon(
//                           Icons.close,
//                           size: 35,
//                         ),
//                       ),
//                       Text(
//                         'Change Photo',
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.dmSans(
//                             color: appcolors.DarkText,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 22),
//                       ),
//                       Text(
//                         '     ',
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.dmSans(
//                             color: appcolors.lightPrimarycolor,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 18),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Text(
//                 'jerry,keep your profile fresh!',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.dmSans(
//                     color: appcolors.DarkText,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 20),
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   // border: Border.all(color: Colors.grey, width: 2),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(100.0),
//                   child: Image.asset(
//                     "assets/person.jpg",
//                     fit: BoxFit.cover,
//                     width: 130,
//                     height: 130,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Take or upload photo',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.dmSans(
//                     color: appcolors.DarkText,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 18),
//               ),
//         customSlider(currentSliderValue: 5, callBack: (){
//
//         }),
//         Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                 child: MaterialButton(
//                   height: 45,
//                   elevation: 0,
//                   minWidth: MediaQuery.of(context).size.width - 100,
//                   color: appcolors.lightPrimarycolor,
//                   shape: StadiumBorder(),
//                   child: Text(
//                     'Upload photo',
//                     style:
//                     GoogleFonts.dmSans(color: Colors.white, fontSize: 17),
//                   ),
//                   onPressed: () async {
//                     var image = await CustomImagePicker().imgFromGallery();
//                     print(image);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// Widget customSlider({@required double currentSliderValue ,double max=10,double min=0,@required Function callBack,Color activeColor=Colors.green}){
//   return  Slider(
//
//     value: currentSliderValue,
//     min: min,
//
//     max: max,
//     divisions: 5,
//     activeColor: activeColor,
//     mouseCursor: MouseCursor.defer,
//     // mouseCursor: MouseCursor.uncontrolled,
//
//     label: currentSliderValue.round().toString(),
//     onChanged:(){
//       callBack();
//     },
//   );
// }