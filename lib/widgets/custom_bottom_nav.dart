import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constatnts/app_colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
                  shape: const RoundedRectangleBorder(),
                  backgroundColor: AppColors.yellowShade,
                ),
                child: const Text('Skip'),
              ),
            ),
            Expanded(
              flex: 3,
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
                  backgroundColor: AppColors.yellow,
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
