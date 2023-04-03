import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/requested_job_details.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/View/tutee_jobs_detail.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/ViewContoller/post_job_selector_view.dart';
import 'package:megamind/AppModule/TutorModule/TutorJobsPostingModule/View/apply_jobs.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class requested_applied_jobs extends StatelessWidget {
  int type;

  requested_applied_jobs({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 40.0,
        width: 40.0,
        child: FittedBox(
          child:type==0? FloatingActionButton(


              onPressed: () {
                if(type==0){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => post_jobs_selector(type: type),));
                }


              }, child: Icon(Icons.add,size: 30,),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))
            ),):SizedBox(width: 1,height: 1,),
        ),
      ),
      body: Container(
        // color: Colors.red,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  if(type==1)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => apply_on_job(),));
                  else
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  tutee_requested_job_detail(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300,blurRadius: 1),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mathematics",style: const TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                            ),
                            simpleTextGrey(text: "now"),
                          ],
                        ),
                        simpleTextGrey(text: "primary"),
                        Row(
                          children: [
                            type == 0
                                ? simpleTextGrey(text: "Tutor Request")
                                : simpleTextGrey(text: "Applied"),
                            SizedBox(
                              width: 20,
                            ),
                            if(type==0)
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
