import 'package:class27/pages/calendar/calendar_page.dart';
import 'package:class27/pages/my_task/my_task_page.dart';
import 'package:class27/pages/profile/profile_page.dart';
import 'package:class27/pages/project/project_page.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class NabBarPage extends StatefulWidget {
  const NabBarPage({Key? key}) : super(key: key);

  @override
  State<NabBarPage> createState() => _NabBarPageState();
}

class _NabBarPageState extends State<NabBarPage> {
  int currentTab = 0;

  final List<Widget> screens = [
    MytaskPage(),
    CalendarPage(),
    ProjectPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = MytaskPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: cardClr,
        //shape: CircularNotchedRectangle(),
        //notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Left Tab bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = MytaskPage();
                        currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_outlined,
                          color: currentTab == 0 ? textClrLight : textClrDark,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "My Task",
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 0 ? textClrLight : textClrDark,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = CalendarPage();
                        currentTab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: currentTab == 1 ? textClrLight : textClrDark,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Calendar",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 1 ? textClrLight : textClrDark,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              //Right Tab bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ProjectPage();
                        currentTab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.request_page_outlined,
                          color: currentTab == 2 ? textClrLight : textClrDark,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Project",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 2 ? textClrLight : textClrDark,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: currentTab == 3 ? textClrLight : textClrDark,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Profile",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 3 ? textClrLight : textClrDark,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
