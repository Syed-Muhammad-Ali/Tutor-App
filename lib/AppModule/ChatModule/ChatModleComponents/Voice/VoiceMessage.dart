// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:getwidget/components/image/gf_image_overlay.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:megamind/AppModule/ChatModule/Model/ChatModel.dart';
// import 'package:megamind/AppModule/Utlis/app_config.dart';
// import 'SeekBarVoice.dart';
// import 'package:rxdart/rxdart.dart';
//
//
// import 'package:audio_session/audio_session.dart';
// class VoiceMessage extends StatefulWidget {
//   final ChatModel chatModel;
//    VoiceMessage({
//      required this.chatModel
// });
//   @override
//   _VoiceMessageState createState() => _VoiceMessageState();
// }
//
// class _VoiceMessageState extends State<VoiceMessage> with WidgetsBindingObserver {
//   bool isPlaying=false;
//   final player = AudioPlayer();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance?.addObserver(this);
//     initAudio();
//   }
//   @override
//   void dispose() {
//     WidgetsBinding.instance?.removeObserver(this);
//     player.dispose();
//     super.dispose();
//
//   }
//   initAudio()async{
//     var duration = await player.setFilePath('${widget.chatModel.recordPath}');
//     print(duration);
//     player.playbackEventStream.listen((event) {
//
//     });
//   }
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.paused) {
//       // Release the player's resources when not in use. We use "stop" so that
//       // if the app resumes later, it will still remember what position to
//       // resume from.
//       player.stop();
//       // setState(() {
//       //   isPlaying=false;
//       // });
//     }
//   }
//   Stream<PositionData> get _positionDataStream =>
//       Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
//           player.positionStream,
//           player.bufferedPositionStream,
//           player.durationStream,
//               (position, bufferedPosition, duration) => PositionData(
//               position, bufferedPosition, duration ?? Duration.zero));
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: Container(
//         height: 50,
//         width: AppConfig(context).width - 100,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             GFImageOverlay(
//               shape: BoxShape.circle,
//               width: 50,
//               height: 50,
//               image: NetworkImage(
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7fku6lB9-iC8Xec61L1KJ3rSDURYtLD3KZsGY8ITCg4oO0u_JAOH_zsAeveHhQhfTz1M&usqp=CAU"),
//             ),
//             // isPlaying
//             player.playing
//                 ? InkWell(
//               borderRadius: BorderRadius.circular(30),
//               onTap: (){
//                 if(player.playing){
//                   setState(() {
//                     isPlaying=false;
//                   });
//                   player.pause();
//                 }
//
//               },
//               child: Icon(
//                 Icons.pause,
//                 color: widget.chatModel.isMe?Colors.green:Colors.white,
//                 size: 50,
//               ),
//             )
//                 : InkWell(
//               borderRadius: BorderRadius.circular(30),
//               onTap: ()async{
//
//                 if(!player.playing){
//                   setState(() {
//                     isPlaying=true;
//                   });
//                 player.play();
//
//                 print(player.playbackEvent.duration!.inSeconds);
//                   print(  player.playbackEvent.updatePosition.inSeconds);
//                 // await player.seek(Duration(seconds:player.duration!.inSeconds));
//                 // await player.pause();
//                 // player.playbackEvent.duration;
//                 }
//               },
//               child: Icon(
//                 Icons.play_arrow_rounded,
//                 color: widget.chatModel.isMe?Colors.white:Colors.white,
//                 size: 50,
//               ),
//             ),
//             Expanded(
//                 child:   StreamBuilder<PositionData>(
//                   stream: _positionDataStream,
//                   builder: (context, snapshot) {
//                     final positionData = snapshot.data;
//                     print("remaining");
//                     // print(positionData!.duration.inSeconds-positionData!.position.inSeconds);
//                     // if(this.mounted)
//                     // if(positionData!.duration.inSeconds-positionData!.position.inSeconds==0){
//                     //
//                     //
//                     //     isPlaying=false;
//                     //
//                     // }
//                     if(!snapshot.hasData)
//                       return Text("");
//                     return SeekBar(
//                       chatModel: widget.chatModel,
//                       duration: positionData?.duration ?? Duration.zero,
//                       position: positionData?.position ?? Duration.zero,
//                       bufferedPosition:
//                       positionData?.bufferedPosition ?? Duration.zero,
//                       onChangeEnd: player.seek,
//
//
//
//                     );
//                   },
//                 ),
//                 // Column(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //   children: [
//                 //     // SizedBox(height: 15,),
//                 //     // ProgressBar(
//                 //     //   progress: Duration(milliseconds:  player.playbackEvent.duration!=null?player.playbackEvent.duration!.inMilliseconds:1000),
//                 //     //   // buffered: Duration(milliseconds: 2000),
//                 //     //   total: Duration(milliseconds:   player.duration!=null? player.duration!.inMilliseconds:5000),
//                 //     //   progressBarColor: AppColor().primaryColor,
//                 //     //   baseBarColor: Colors.grey,
//                 //     //   // bufferedBarColor: Colors.white.withOpacity(0.24),
//                 //     //   thumbColor: AppColor().primaryColor,
//                 //     //   barHeight: 4.0,
//                 //     //   thumbRadius:7.0,
//                 //     //
//                 //     //   // timeLabelLocation: TimeLabelLocation.none,
//                 //     //
//                 //     //   onSeek: (duration) {
//                 //     //     player.seek(duration);
//                 //     //   },
//                 //     //
//                 //     // ),
//                 //     StreamBuilder<PositionData>(
//                 //       stream: _positionDataStream,
//                 //       builder: (context, snapshot) {
//                 //         final positionData = snapshot.data;
//                 //         return SeekBar(
//                 //           duration: positionData?.duration ?? Duration.zero,
//                 //           position: positionData?.position ?? Duration.zero,
//                 //           bufferedPosition:
//                 //           positionData?.bufferedPosition ?? Duration.zero,
//                 //           onChangeEnd: player.seek,
//                 //
//                 //
//                 //         );
//                 //       },
//                 //     ),
//                 //   ],
//                 // )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
