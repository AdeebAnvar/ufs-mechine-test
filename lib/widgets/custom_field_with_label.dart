import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/widgets/custom_textfield.dart';

class CustomFieldWithLabel extends StatelessWidget {
  const CustomFieldWithLabel({
    super.key,
    required this.controller,
    required this.hint,
  });

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hint),
          const SizedBox(height: 5),
          CustomTextField(
            controller: controller,
            fillColor: Colors.transparent,
            border: const OutlineInputBorder(),
          ),
        ],
      ),
    );
  }
}
