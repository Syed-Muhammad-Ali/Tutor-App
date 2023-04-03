import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megamind/AppModule/JobsModule/View/completd_jobs.dart';
import 'package:megamind/AppModule/JobsModule/View/jobs_list_view.dart';
import 'package:megamind/AppModule/JobsModule/View/requested_applied_jobs.dart';
import 'package:megamind/AppModule/TuteeModule/TuteeJobsModule/ViewContoller/job_post_by_tutee.dart';
import 'package:megamind/AppModule/TuteeModule/TuteePaymentMedule/View/current_payment_view.dart';
import 'package:megamind/AppModule/PaymentModule/ViewController/payment_history_view.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';
import 'package:megamind/AppModule/Utlis/Text/heading_text.dart';

class payment_module_selector extends StatefulWidget {
  int type;

  payment_module_selector({Key? key, required this.type}) : super(key: key);

  @override
  _payment_module_selectorState createState() => _payment_module_selectorState();
}

class _payment_module_selectorState extends State<payment_module_selector>
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
                          color: Color(0xFFF4F4F8),
                          borderRadius: BorderRadius.circular(
                            25.0,
                          ),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          // give the indicator a decoration (color and border radius)
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 4)
                              ]),
                          labelColor: CustomColor.primaryButtonColor,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            // first tab [you can add an icon using the icon property]
                            Tab(
                              text: "Current",
                            ),

                            // second tab [you can add an icon using the icon property]

                            Tab(
                              text: "History",
                            ),
                          ],
                        ),
                      ),
                      // tab bar view here
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // first tab bar view widget
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10),
                              child: CurrentPaymentVIew()
                            ),
                            Center(
                              child: Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 50, top: 5),
                                  child: paymentHistoryView()
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
