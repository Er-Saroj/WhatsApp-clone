// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:first_app/widget/update_page/channal_text.dart';
import 'package:first_app/widget/update_page/channel_list.dart';
import 'package:first_app/widget/update_page/explore_btn.dart';
import 'package:first_app/widget/update_page/floting_actn.dart';
import 'package:first_app/widget/update_page/mute_option.dart';
import 'package:first_app/widget/update_page/my_status.dart';
import 'package:first_app/widget/update_page/resently_updates.dart';
import 'package:first_app/widget/update_page/status_bar.dart';
import 'package:first_app/widget/update_page/viewed_update.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class updatedetails extends StatelessWidget {
  const updatedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              btatus_bar(),
              my_status(),
              Resently_updates(),
              viewed_updates(),
              mute_option(),
              Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Divider(
                    color: Colors.black12,
                  )),
              channel_text(),
              Channal_list(),
              explore_more(),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Explore_more_btn(),
            Updare_page_flotingbuttom(),
          ],
        ));
  }
}
