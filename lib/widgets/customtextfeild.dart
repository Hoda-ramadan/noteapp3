import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
  });
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "this filed is required";
          } else {
            return null;
          }
        },
        maxLines: maxline,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hint: Text(hint),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
