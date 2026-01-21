import 'package:flutter/material.dart';
import 'package:noteapp3/widgets/custom_appbar.dart';
import 'package:noteapp3/widgets/customtextfeild.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(data: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          Customtextfeild(hint: "Titel"),
          SizedBox(height: 20),
          Customtextfeild(hint: "Content", maxline: 5),
        ],
      ),
    );
  }
}
