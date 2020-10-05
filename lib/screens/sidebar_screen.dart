import 'package:designcode/components/sidebar_row.dart';
import 'package:designcode/model/sidebar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class SidebarScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(14)
          )
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width*0.85,
      padding: EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 20
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popla",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(height: 4),
                    Text(
                        "License ends on 21 jan 2021",
                        style: kSearchPlaceholderStyle
                    ),

                  ],
                )
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.08),

            SidebarRow(
                item: sidebarItem[0]
            ),
            SizedBox(height: 32),

            SidebarRow(
                item: sidebarItem[1]
            ),
            SizedBox(height: 32),

            SidebarRow(
                item: sidebarItem[2]
            ),
            SizedBox(height: 32),

            SidebarRow(
                item: sidebarItem[3]
            ),
            SizedBox(height: 32),

            Spacer(),
            Row(
              children: [
                Image.asset('asset/icons/icon-logout.png',width: 17,),
                SizedBox(width: 12,),
                Text("LogOut",style: kSecondaryCalloutLabelStyle,),

              ],
            )
          ],
        ),
      ),
    );
  }
}

