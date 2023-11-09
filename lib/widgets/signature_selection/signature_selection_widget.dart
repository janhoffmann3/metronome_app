import 'package:flutter/material.dart';
import 'package:metronome_app/resources/values/app_enums.dart';

import '../../resources/values/app_fonts.dart';
import 'signature_selection_signature_change_button.dart';
import 'signature_selection_signature_display_widget.dart';

/// ### Signature selection widget
///
/// User can control and set the signature of the metronome using this widget.
/// It contains four [SignatureSelectionSignatureChangeButton] (two for decreasing and two for increasing) for changing the signature.
/// It contains two [SignatureDisplayWidget] for showing the signature numeral on screen.
///

class SignatureSelectionWidget extends StatelessWidget {
  const SignatureSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column for the first numeral.
          const Column(
            children: [
              // Button used for increasing the signature numeral.
              SignatureSelectionSignatureChangeButton(
                mainIcon: Icon(Icons.add),
                type: SignatureButtonType.inc,
              ),
              SizedBox(
                height: 10,
              ),

              // First numeral display widget.
              SignatureDisplayWidget(
                signatureText: 4,
                numeral: SignatureDisplayNumeral.first,
              ),
              SizedBox(
                height: 10,
              ),

              // Button used for decreasing the signature numeral.
              SignatureSelectionSignatureChangeButton(
                  mainIcon: Icon(Icons.remove), type: SignatureButtonType.dec),
            ],
          ),

          // "/" separator.
          Text(
            "/",
            style: AppFonts.signatureNumber,
          ),

          // Column for the second numeral.
          const Column(
            children: [
              //Button used for increasing the signature numeral.
              SignatureSelectionSignatureChangeButton(
                mainIcon: Icon(Icons.add),
                type: SignatureButtonType.inc,
              ),
              SizedBox(
                height: 10,
              ),

              // Second numeral display widget.
              SignatureDisplayWidget(
                  numeral: SignatureDisplayNumeral.second, signatureText: 4),
              SizedBox(
                height: 10,
              ),

              // Button used for decreasing the signature numeral.
              SignatureSelectionSignatureChangeButton(
                  mainIcon: Icon(Icons.remove), type: SignatureButtonType.dec),
            ],
          ),
        ],
      ),
    );
  }
}
