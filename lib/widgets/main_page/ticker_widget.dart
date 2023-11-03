import 'package:flutter/material.dart';
import '../../resources/values/app_colors.dart';

class TickerWidget extends StatelessWidget {
  const TickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 125,
        height: 13,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primary300)),
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500)),
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500)),
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500))
        ]),
      ),
    );
  }
}
