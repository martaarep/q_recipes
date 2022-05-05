import 'package:flutter/material.dart';

import '../../../../common/ui/colors.dart';

class CircularLoader extends StatelessWidget {
  const CircularLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            AppColors.darkestGreen,
          ),
          strokeWidth: 2.5,
        ),
      ),
    );
  }
}
