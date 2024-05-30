// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Explore_more_btn extends StatelessWidget {
  const Explore_more_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 8),
      child: SizedBox(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          backgroundColor: Colors.green[100],
          onPressed: () {},
          child: Icon(
            Icons.edit,
            color: Colors.green[900],
          ),
        ),
      ),
    );
  }
}
