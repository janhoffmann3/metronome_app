import 'package:flutter/material.dart';
import 'package:metronome_app/widgets/signature_selection/signature_selection_widget.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';
import 'bottom_menu_modal_sheet_wrapper.dart';

/// ### Signature selection button
///
/// Used for setting the signature. Opens the [SoundSelectionWidget] where user can set his own tempo preference.
///
class BottomMenuSignatureSelectionButton extends StatelessWidget {
  const BottomMenuSignatureSelectionButton({
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
                    return const BottomMenuModalSheetWrapper(
                        height: 430,
                        titleText: "Select signature",
                        child: SignatureSelectionWidget());
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
