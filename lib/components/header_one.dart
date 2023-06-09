import 'package:flutter/material.dart';

import '../Utils/Utils.dart';

class HeaderOne extends StatelessWidget {
  const HeaderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.width(context)
                  : Utils.width(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.height(context) / 2
                  : Utils.height(context) - 70,
              child: Padding(
                padding: Utils.isMobile(context)
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: Image.asset(
                  'assets/images/wfh_1.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.width(context)
                  : Utils.width(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.height(context) / 2
                  : Utils.height(context) - 70,
              child: Center(
                child: SizedBox(
                  height: Utils.isMobile(context)
                      ? 200 / (Utils.width(context) * 0.0025)
                      : 180,
                  width: Utils.isMobile(context)
                      ? Utils.width(context) * 0.85
                      : 380,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia sed dolorem fugit sapiente porro veniam pariatur dolore nostrum delectus inventore tempore minus nemo, iste ullam illo laboriosam maiores repudiandae quos!',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
