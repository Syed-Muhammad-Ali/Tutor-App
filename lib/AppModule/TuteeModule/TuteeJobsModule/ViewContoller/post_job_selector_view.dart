import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/View/completd_jobs.dart';
import 'package:megamind/AppModule/JobsModule/View/jobs_list_view.dart';
import 'package:megamind/AppModule/JobsModule/View/requested_applied_jobs.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/ViewContoller/job_post_by_tutee.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class post_jobs_selector extends StatefulWidget {
  int type;

  post_jobs_selector({Key? key, required this.type}) : super(key: key);

  @override
  _post_jobs_selectorState createState() => _post_jobs_selectorState();
}

class _post_jobs_selectorState extends State<post_jobs_selector>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.backcolor,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                // color: Colors.blue,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    simpleTitleText(text: "Mathematics"),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // give the tab bar a height [can change hheight to preferred height]
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          color:   Color.fromRGBO(4, 4, 21, 0.04),
                          borderRadius: BorderRadius.circular(
                            25.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TabBar(
                            controller: _tabController,
                            // give the indicator a decoration (color and border radius)
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.0,
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color:  Color.fromRGBO(4, 4, 21, 0.04),blurRadius: 2)
                                ]),
                            labelColor: CustomColor.primaryButtonColor,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              // first tab [you can add an icon using the icon property]
                              Tab(
                                text: "I'm a tutee",
                              ),

                              // second tab [you can add an icon using the icon property]

                              Tab(
                                text: "I'm a Parent",
                              ),
                            ],
                          ),
                        ),
                      ),
                      // tab bar view here
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // first tab bar view widget
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 50,),
                                child: tutee_jobs_post(
                                  isparent: false,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:      const EdgeInsets.only(bottom: 50,),
                                child: tutee_jobs_post(
                                  isparent: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
