import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/Components/jobs_tile.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/tutee_jobs_detail.dart';

class jobs_list_tile extends StatelessWidget {
  bool  isCompleted;
  jobs_list_tile({Key? key,required this.isCompleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFCFCFF),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return jobs_tile(isCompleted: isCompleted,callback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  tutee_job_detail(),));


          },);
        },
      ),
    );
  }
}
