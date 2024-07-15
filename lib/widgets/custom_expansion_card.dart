import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constatnts/app_colors.dart';

class CustomExpansionCard extends StatelessWidget {
  const CustomExpansionCard({
    super.key,
    required this.hint,
    this.children,
    this.tileColor,
    this.childrenPadding,
  });

  final String hint;
  final List<Widget>? children;
  final Color? tileColor;
  final EdgeInsets? childrenPadding;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(hint),
      backgroundColor: tileColor ?? AppColors.primaryColor,
      collapsedBackgroundColor: tileColor ?? AppColors.primaryColor,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide.none,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide.none,
      ),
      childrenPadding: childrenPadding ?? const EdgeInsets.all(10),
      children: children ?? [],
    );
  }
}
