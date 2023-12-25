
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void showBottomSheetWidget(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      var height = MediaQuery.of(context).size.height;
      var width = MediaQuery.of(context).size.width;
      return Container(
        height: height,
        padding: const EdgeInsets.all(16),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.save),
              title: const Text('Save for letter'),
              onTap: () {
                // Handle camera selection
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                // Handle gallery selection
                Navigator.pop(context);
              },
            ),
            ListTile(
               leading: const Icon(Icons.add_card_outlined),
              onTap: () {
                // Handle file selection
                Navigator.pop(context);
              },
              title: const Text('Go to Cricbuzz'),
            ),  ListTile(
               leading: const Icon(Icons.hide_source_rounded),
              title: const Text('Hide all stories from Cricbuzz'),
              onTap: () {
                // Handle file selection
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Send feedback'),
              onTap: () {
                // Handle file selection
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.report_gmailerrorred),
              title: const Text('Report content'),
              onTap: () {
                // Handle file selection
                Navigator.pop(context);
              },
            ),
            
            
            Row(
              children: [
                Container(
                  width: width/2.3,
                  child: const Column(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined, size: 40,),
                      Text("More stories like this")
                    ],
                  ),
                ),

                Container(
                  width: width/2.3,
                  child: const Column(
                    children: [
                      Icon(Icons.thumb_down_alt_outlined, size: 40,),
                      Text("Fewer stories like this")
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    },
  );
}
