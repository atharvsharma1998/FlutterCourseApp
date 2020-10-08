import 'package:designcode/model/course.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class ContinueWatchingCard extends StatelessWidget {

  ContinueWatchingCard({this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0,right: 20),
            child: Container(

              decoration: BoxDecoration(
                gradient: course.background,
                borderRadius: BorderRadius.circular(41),
                boxShadow: [BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: Offset(0,20),
                    blurRadius: 20

                ),
                  BoxShadow(
                      color: course.background.colors[0].withOpacity(0.3),
                      offset: Offset(0,20),
                      blurRadius: 20

                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(41),
                child: Container(
                  width: 260,
                  height: 140,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(
                                'asset/illustrations/${course.illustration}',
                                fit: BoxFit.cover,
                                height: 110,
                              ),
                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                course.courseSubtitle,
                                style: kCardSubtitleStyle
                            ),
                            SizedBox(height: 6),
                            Text(
                                course.courseTitle,
                                style: kCardTitleStyle
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ),
          ),
          Container(
            child: Image.asset('asset/icons/icon-play.png'),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(color: kShadowColor, offset: Offset(0,4), blurRadius: 16),
                ]
            ),
            padding: EdgeInsets.only(top: 12,bottom: 13,left: 20,right: 14),
          ),
        ],
      ),
    );
  }
}
