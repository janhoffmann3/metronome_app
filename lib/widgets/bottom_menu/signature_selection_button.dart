import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';
import '../signature_selection/signature_selection_widget.dart';

class SignatureSelectionButton extends StatelessWidget {
  const SignatureSelectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: AppColors.secondary500)),
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: ((context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      decoration: BoxDecoration(
                        color: AppColors.secondary700,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(color: AppColors.secondary500),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              width: 32,
                              height: 4,
                              decoration: const BoxDecoration(
                                  color: AppColors.secondary500,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            margin: const EdgeInsets.only(left: 25),
                            child: Text(
                              "Select signature",
                              style: AppFonts.titleNormal,
                            ),
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          const Center(
                            child: SignatureSelectionWidget(),
                          )
                        ],
                      ),
                    );
                  }));
            },
            elevation: 0,
            backgroundColor: AppColors.secondary900,
            child: Text(
              "4/4",
              style: AppFonts.sigIcon,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            "Signature",
            style: AppFonts.labelSmall,
          ),
        )
      ],
    );
  }
}
