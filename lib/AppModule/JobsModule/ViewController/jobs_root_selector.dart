import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/View/animated_search_bar.dart';
import 'package:megamind/AppModule/JobsModule/View/completd_jobs.dart';
import 'package:megamind/AppModule/JobsModule/View/jobs_list_view.dart';
import 'package:megamind/AppModule/JobsModule/View/requested_applied_jobs.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class jobs_root_selector_view extends StatefulWidget {
  int type;

  jobs_root_selector_view({Key? key, required this.type}) : super(key: key);

  @override
  _jobs_root_selector_viewState createState() =>
      _jobs_root_selector_viewState();
}

class _jobs_root_selector_viewState extends State<jobs_root_selector_view>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
        body: Container(
      color: Color(0xFFFCFCFF),
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
                widget.type == 0
                    ? simpleTitleText(text: "Jobs")
                    : simpleTitleText(text: "My Jobs"),
                Spacer(),
                animated_search_bar(),
                // InkWell(
                //     child: Icon(
                //   Icons.search,
                //   color: Colors.blue,
                // )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // give the tab bar a height [can change hheight to preferred height]
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(4, 4, 21, 0.04),
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
                                BoxShadow(
                                    color: Color.fromRGBO(4, 4, 21, 0.04),
                                    blurRadius: 2)
                              ]),
                          labelColor: CustomColor.primaryButtonColor,
                          labelStyle: TextStyle(fontSize: 14),
                          unselectedLabelColor:
                              CustomColor.profileTextColorDark,
                          tabs: [
                            // first tab [you can add an icon using the icon property]
                            Tab(
                              text: 'Ongoing',
                            ),

                            // second tab [you can add an icon using the icon property]
                            widget.type == 0
                                ? Tab(
                                    text: 'Requested',
                                  )
                                : Tab(
                                    text: 'Applied',
                                  ),

                            Tab(
                              text: 'Completed',
                            ),
                          ],
                        ),
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
                          padding: const EdgeInsets.only(bottom: 50, top: 5),
                          child: jobs_list_tile(
                            isCompleted: false,
                          ),
                        )),

                        // second tab bar view widget
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, top: 5),
                          child: requested_applied_jobs(
                            type: widget.type,
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, top: 5),
                          child: jobs_list_tile(
                            isCompleted: false,
                          ),
                        )),
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
