import 'package:flutter/material.dart';
import 'package:hg_app_2/plus/presentation/widgets/bibliography_list_builder.dart';

class BibliographyPage extends StatelessWidget {
  const BibliographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bibliographie',
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        //This is a required parameter to show the foreground color
        backwardsCompatibility: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 40,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                SizedBox(
                  height: 32,
                ),
                BibliographyListBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
