import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constatnts/app_colors.dart';

class CustomDropDownButtonField<T> extends StatelessWidget {
  const CustomDropDownButtonField({
    super.key,
    this.value = String,
    required this.items,
    required this.hint,
    this.border,
    this.focusedBorder,
    this.validator,
    this.onChanged,
    this.fillColor,
  });
  final Type value;
  final List<T> items;
  final String hint;
  final OutlineInputBorder? border;
  final OutlineInputBorder? focusedBorder;
  final String? Function(T?)? validator;
  final Color? fillColor;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        fillColor: fillColor ?? AppColors.primaryColor,
        filled: true,
        border: border ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
        enabledBorder: border ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
      ),
      borderRadius: BorderRadius.circular(10),
      hint: Text(
        hint,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      items: items.map((i) {
        return DropdownMenuItem<T>(
          value: i,
          child: Text(i.toString()),
        );
      }).toList(),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
