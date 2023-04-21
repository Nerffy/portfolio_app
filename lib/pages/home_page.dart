import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/components/header_one.dart';

import '../components/contact_form.dart';
import '../components/footer.dart';
import '../components/more_about_me.dart';
import '../components/my_drawer.dart';
import '../components/recent_projects.dart';
import '../components/top_skills.dart';
import '../utils/Utils.dart';
import '../components/home_page_actions.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFf4756DF),
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  sc: myScrollController,
                ),
        ],
        title: const Text(
          'MARIANO',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFF4756DF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: Column(
                children: const [
                  HeaderOne(),
                  MoreAboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactForm(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,
      floatingActionButton: SingleChildScrollView(
        controller: myScrollController,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          mini: Utils.isMobile(context) ? true : false,
          onPressed: () {
            myScrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeIn,
            );
          },
          child: Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_83ssyqhj.json',
          ),
        ),
      ),
    );
  }
}
