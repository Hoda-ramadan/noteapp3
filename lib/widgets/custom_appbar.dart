import 'package:flutter/material.dart';
import 'package:noteapp3/widgets/custom_search_decoration.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.data, required this.icon});
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(data, style: TextStyle(fontSize: 29)),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
