import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';

class TempoSlider extends StatelessWidget {
  const TempoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 330,
        child: SliderTheme(
            data: const SliderThemeData(
                thumbColor: AppColors.primary400,
                activeTrackColor: AppColors.primary400,
                inactiveTrackColor: AppColors.secondary700),
            child: Slider(value: 0.2, onChanged: (value) {})),
      ),
    );
  }
}
