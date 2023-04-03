import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart' as ap;
// import 'package:lottie/lottie.dart';
import 'package:megamind/AppModule/ChatModule/ViewModel/ChatViewModel.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/ImagePicker.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:record/record.dart';
class chat_text_field extends StatefulWidget {
  final ChatViewModel

  controller;
  // final void Function(String path) onStop;
  final Function(String message) onSendText;
  // final Function(String path) onSendVoice;
  // final Function(String path) onSendImage;

  const chat_text_field(
      {
        // required this.onStop,
      required this.controller,
      required this.onSendText,
      // required this.onSendVoice,
      // required this.onSendImage
      });

  @override
  _chat_text_fieldState createState() => _chat_text_fieldState();
}

class _chat_text_fieldState extends State<chat_text_field>
    with SingleTickerProviderStateMixin {
  // bool _isRecording = false;
  // bool _isPaused = false;
  // int _recordDuration = 0;
  // Timer? _timer;
  // Timer? _ampTimer;
  // final _audioRecorder = Record();
  // Amplitude? _amplitude;
  String message = "";
  // bool isCanceled = false;

  //ANIMATION
  AnimationController? _animationController;

  // //Mic
  // Animation<double>? _micTranslateTop;
  // Animation<double>? _micRotationFirst;
  // Animation<double>? _micTranslateRight;
  // Animation<double>? _micTranslateLeft;
  // Animation<double>? _micRotationSecond;
  // Animation<double>? _micTranslateDown;
  // Animation<double>? _micInsideTrashTranslateDown;

  // //Trash Can
  // Animation<double>? _trashWithCoverTranslateTop;
  // Animation<double>? _trashCoverRotationFirst;
  // Animation<double>? _trashCoverTranslateLeft;
  // Animation<double>? _trashCoverRotationSecond;
  // Animation<double>? _trashCoverTranslateRight;
  // Animation<double>? _trashWithCoverTranslateDown;
  //
  // @override
  // void initState() {
  //   _isRecording = false;
  //   super.initState();
  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 1000),
  //   );
  //   //Mic
  //
  //   _micTranslateTop = Tween(begin: 0.0, end: -140.0).animate(
  //     CurvedAnimation(
  //       parent: _animationController!,
  //       curve: Interval(0.0, 0.45, curve: Curves.easeOut),
  //     ),
  //   );
  //   _micRotationFirst =
  //       Tween(begin: 0.0, end: pi).animate(
  //       CurvedAnimation(
  //     parent: _animationController!,
  //     curve: Interval(0.0, 0.2),
  //   ),
  //    );
  //   _micTranslateRight = Tween(begin: 0.0, end: 10.0).animate(
  //     CurvedAnimation(
  //       parent: _animationController!,
  //       curve: Interval(0.0, 0.1),
  //     ),
  //   );
  //
  //   _micTranslateLeft = Tween(begin: 0.0, end: -10.0).animate(
  //     CurvedAnimation(
  //       parent: _animationController!,
  //       curve: Interval(0.1, 0.2),
  //     ),
  //   );
  //
  //   _micRotationSecond =
  //      Tween(begin: 0.0, end: pi).animate(
  //       CurvedAnimation(
  //     parent: _animationController!,
  //     curve: Interval(0.2, 0.45),
  //   ),
  //    );
  //
  //   _micTranslateDown = Tween(begin: 0.0, end: 140.0).animate(
  //     CurvedAnimation(
  //       parent: _animationController!,
  //       curve: Interval(0.45, 0.90, curve: Curves.easeInOut),
  //     ),
  //   );
  //
  //   _micInsideTrashTranslateDown = Tween(begin: 0.0, end: 45.0).animate(
  //     CurvedAnimation(
  //       parent: _animationController!,
  //       curve: Interval(0.95, 1.0, curve: Curves.bounceInOut),
  //     ),
  //   );

    //Trash Can

    // _trashWithCoverTranslateTop = Tween(begin: 30.0, end: -25.0).animate(
    //   CurvedAnimation(
    //     parent: _animationController!,
    //     curve: Interval(0.45, 0.6),
    //   ),
    // );

    // _trashCoverRotationFirst =
    //     // Tween(begin: 0.0, end: -pi / 3).animate(
    //     CurvedAnimation(
    //   parent: _animationController!,
    //   curve: Interval(0.6, 0.7),
    // );
    // );

    // _trashCoverTranslateLeft = Tween(begin: 0.0, end: -18.0).animate(
    //   CurvedAnimation(
    //     parent: _animationController!,
    //     curve: Interval(0.6, 0.7),
    //   ),
    // );
    //
    // _trashCoverRotationSecond =
    //     // Tween(begin: 0.0, end: pi / 3).animate(
    //     CurvedAnimation(
    //   parent: _animationController!,
    //   curve: Interval(0.8, 0.9),
    // );
    // );

    // _trashCoverTranslateRight = Tween(begin: 0.0, end: 18.0).animate(
    //   CurvedAnimation(
    //     parent: _animationController!,
    //     curve: Interval(0.8, 0.9),
    //   ),
    // );

    // _trashWithCoverTranslateDown = Tween(begin: 0.0, end: 55.0).animate(
    //   CurvedAnimation(
    //     parent: _animationController!,
    //     curve: Interval(0.95, 1.0, curve: Curves.easeInOut),
    //   ),
    // );
  // }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   _ampTimer?.cancel();
  //   _audioRecorder.dispose();
  //   _animationController!.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 20),
      // color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 15,
            ),

            _buildText(),
            // _buildCancelText(),

            // _isRecording || _isPaused
            //     ?
            // if (_isRecording || _isPaused)
            SizedBox(
              width: 5,
            ),
            // : Spacer(),
            _buildRecordStopControl(),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );}

  Widget _buildRecordStopControl() {
    late Widget icon;
    late Color color;
    final theme = Theme.of(context);
    // if (_isRecording ||
    //     _isPaused ||
    //     widget.controller.textController.text.isNotEmpty) {
      icon = Image(image: AssetImage("assets/chat/send.png"),height: 25,width: 25,);
      color = Colors.green;
    // } else {
    //   icon = Icon(Icons.mic, color: Colors.white, size: 30);
    //   color =  Colors.green;
    //   // color = theme.primaryColor.withOpacity(0.1);
    // }

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),

      child
          : MaterialButton(
        height: 48,
      minWidth: 40,

      color: CustomColor.primaryButtonColor,
        onPressed: () async {
          // if (_isRecording) {
          //   _stop(isCanceled: false);
          //
          // } else if (widget.controller.textController.text.isNotEmpty) {
            setState(() {
              message = "";
            });
            print(widget.controller.textController.text);
            widget.onSendText(widget.controller.textController.text);

            widget.controller.textController.value = TextEditingValue.empty;

            // _stop();
          },
          // else {
          //   if (await Permission.storage.request().isGranted) {
          //     _start();
          //     // Either the permission was already granted before or the user just granted it.
          //   }
          //   else {
          //     print("status denied");
          //   }
          // }
        // },
        child: icon,
      ),
    );
  }
  //
  // Widget _buildPauseResumeControl() {
  //   // if (!_isRecording && !_isPaused) {
  //   //   return const SizedBox.shrink();
  //   // }
  //
  //   late Icon icon;
  //   late Color color;
  //
  //   // if (!_isPaused) {
  //   // icon = Icon(Icons.mic, color: theme.primaryColor, size: 30);
  //   icon = Icon(Icons.mic, color: Colors.grey, size: 30);
  //   color = Colors.transparent;
  //   // color = Colors.red.withOpacity(0.1);
  //   // } else {
  //   //   final theme = Theme.of(context);
  //   //   icon = Icon(Icons.play_arrow, color: Colors.red, size: 30);
  //   //   color = theme.primaryColor.withOpacity(0.1);
  //   // }
  //
  //   // return _buildMicAnimation();
  //   //   Material(
  //   //   color: color,
  //   //   child: SizedBox(width: 56, height: 56, child:  _buildMicAnimation()),
  //   // );
  // }

  Widget  _buildText() {
//     if (_isRecording || _isPaused) {
//       return Expanded(
//         child: Container(
//           height: 50,
//           // width: 200,
//           decoration: BoxDecoration(
//               color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
//           child: Padding(
//             padding: const EdgeInsets.only(right: 15, left: 15),
//             child: Row(
//               children: [
//                 _buildPauseResumeControl(),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 _buildTimer(),
//                 Spacer(),
//                 InkWell(
//                   onTap: () {
//                     if (_isRecording) {
//                       _animationController!.forward();
// setState(() {
//   isCanceled=true;
// });
//                       _animationController!.addStatusListener((status) {
//                         if (_animationController!.isCompleted) {
//                           _stop(isCanceled: true);
//                           _animationController!.reset();
//                           setState(() {
//                             isCanceled=false;
//                           });
//                         }
//                       });
//                       // _stop(isCanceled: true);
//                     }
//                   },
//                   child: Text(
//                     "Cancel",
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       );
//     }

    return _buildTextFieldText();
  }

  Widget _buildTextFieldText() {
    return Expanded(
      child: Container(
        height: 48,
        // height: 50,

        // width: 200,
        decoration: BoxDecoration(
            color: Color.fromRGBO(82, 89, 105, 0.05), borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                controller: widget.controller.textController,
                onChanged: (value) {
                  setState(() {
                    message = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Message",
                  fillColor:Color.fromRGBO(82, 89, 105, 0.05),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            // InkWell(
            //   splashColor: Colors.white,
            //   onTap: () async {
            //     await CustomImagePicker().showPicker(
            //         context: context,
            //         onGetImage: (image) {
            //           print(image);
            //           widget.onSendImage(image!);
            //         });
            //   },
            //   child: Icon(
            //     Icons.attach_file,
            //     color: Colors.grey[600],
            //   ),
            // ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildTimer() {
  //   final String minutes = _formatNumber(_recordDuration ~/ 60);
  //   final String seconds = _formatNumber(_recordDuration % 60);
  //
  //   return Text(
  //     '$minutes : $seconds',
  //     style: TextStyle(color: Colors.grey[600], fontSize: 18),
  //   );
  // }
  //
  // String _formatNumber(int number) {
  //   String numberStr = number.toString();
  //   if (number < 10) {
  //     numberStr = '0' + numberStr;
  //   }
  //
  //   return numberStr;
  // }
  //
  // Future<void> _start() async {
  //   try {
  //     if (await _audioRecorder.hasPermission()) {
  //       var response = await _audioRecorder.start();
  //
  //       bool isRecording = await _audioRecorder.isRecording();
  //       setState(() {
  //         _isRecording = isRecording;
  //         _recordDuration = 0;
  //       });
  //
  //       _startTimer();
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  //
  // Future<void> _stop({bool isCanceled = false}) async {
  //   _timer?.cancel();
  //   _ampTimer?.cancel();
  //   final path = await _audioRecorder.stop();
  //   if (isCanceled == false) {
  //     widget.onSendVoice(path!);
  //   } else {}
  //   // widget.onStop(path!);
  //
  //   print("Audio Path");
  //   print(path);
  //
  //   setState(() => _isRecording = false);
  // }
  //
  // Future<void> _pause() async {
  //   _timer?.cancel();
  //   _ampTimer?.cancel();
  //   await _audioRecorder.pause();
  //
  //   setState(() => _isPaused = true);
  // }
  //
  // Future<void> _resume() async {
  //   _startTimer();
  //   await _audioRecorder.resume();
  //
  //   setState(() => _isPaused = false);
  // }
  //
  // void _startTimer() {
  //   _timer?.cancel();
  //   _ampTimer?.cancel();
  //
  //   _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
  //     setState(() => _recordDuration++);
  //   });
  //
  //   _ampTimer =
  //       Timer.periodic(const Duration(milliseconds: 200), (Timer t) async {
  //     _amplitude = await _audioRecorder.getAmplitude();
  //     setState(() {});
  //   });
  // }
  //
  // Widget _buildMicAnimation() {
  //   return Stack(
  //     alignment: Alignment.center,
  //     children: [
  //       // isCanceled?
  //       Padding(
  //         padding: const EdgeInsets.only(bottom: 20),
  //         child: AnimatedBuilder(
  //           animation: _animationController!,
  //           builder: (context, child) {
  //             return Transform(
  //               transform: Matrix4.identity()
  //                 ..translate(0.0, 10)
  //                 ..translate(_micTranslateRight!.value)
  //                 ..translate(_micTranslateLeft!.value)
  //                 ..translate(0.0, _micTranslateTop!.value)
  //                 ..translate(0.0, _micTranslateDown!.value)
  //                 ..translate(0.0, _micInsideTrashTranslateDown!.value),
  //               child: Transform.rotate(
  //                 angle: _micRotationFirst!.value,
  //
  //                 child: Transform.rotate(
  //                   angle: _micRotationSecond!.value,
  //                   child: child,
  //                 ),
  //               ),
  //             );
  //           },
  //           child: Icon(
  //             Icons.mic,
  //             color: Color(0xFFef5552),
  //             size: 25,
  //           ),
  //         ),
  //       ),
  //         //   :
  //         // Container(
  //         //   height: 30,
  //         //   width: 30,
  //         //   child: Lottie.asset(
  //         //     'assets/recording.json',
  //         //     // width: 25,
  //         //     // height: 25,
  //         //     repeat: false,
  //         //     fit: BoxFit.fill,
  //         //   ),
  //         // ),
  //
  //       if(isCanceled)
  //       Container(
  //         height: 30,
  //         width: 30,
  //         child: Lottie.asset(
  //           'assets/dustbin.json',
  //           // width: 25,
  //           // height: 25,
  //           repeat: false,
  //
  //           fit: BoxFit.fill,
  //         ),
  //       ),
  //       // AnimatedBuilder(
  //       //     animation: _trashWithCoverTranslateTop!,
  //       //     builder: (context, child) {
  //       //       return Transform(
  //       //         transform: Matrix4.identity()
  //       //           ..translate(0.0, _trashWithCoverTranslateTop!.value)
  //       //           ..translate(0.0, _trashWithCoverTranslateDown!.value),
  //       //         child: child,
  //       //       );
  //       //     },
  //       //     child: Column(
  //       //       children: [
  //       //         AnimatedBuilder(
  //       //           animation: _trashCoverRotationFirst!,
  //       //           builder: (context, child) {
  //       //             return Transform(
  //       //               transform: Matrix4.identity()
  //       //                 ..translate(_trashCoverTranslateLeft!.value)
  //       //                 ..translate(_trashCoverTranslateRight!.value),
  //       //               child: Transform.rotate(
  //       //                 angle: _trashCoverRotationSecond!.value,
  //       //                 child: Transform.rotate(
  //       //                   angle: _trashCoverRotationFirst!.value,
  //       //                   child: child,
  //       //                 ),
  //       //               ),
  //       //             );
  //       //           },
  //       //           child: Image(
  //       //             image: AssetImage('assets/trash_cover.png'),
  //       //             width: 25,
  //       //           ),
  //       //         ),
  //       //         Padding(
  //       //           padding: const EdgeInsets.only(top: 1.5),
  //       //           child: Image(
  //       //             image: AssetImage('assets/trash_container.png'),
  //       //             width: 25,
  //       //           ),
  //       //         ),
  //       //       ],
  //       //     )),
  //     ],
  //   );
  // }
}


