import 'package:flutter/material.dart';
import 'package:metronome_app/resources/values/app_enums.dart';

import '../../resources/values/app_fonts.dart';
import 'signature_change_button.dart';
import 'signature_display_widget.dart';

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
          const Column(
            children: [
              SignatureChangeButton(
                mainIcon: Icon(Icons.add),
                type: SignatureButtonType.inc,
              ),
              SizedBox(
                height: 10,
              ),
              SignatureDisplayWidget(
                signatureText: "4",
                numeral: SignatureDisplayNumeral.first,
              ),
              SizedBox(
                height: 10,
              ),
              SignatureChangeButton(
                  mainIcon: Icon(Icons.remove), type: SignatureButtonType.dec),
            ],
          ),
          Text(
            "/",
            style: AppFonts.signatureNumber,
          ),
          const Column(
            children: [
              SignatureChangeButton(
                mainIcon: Icon(Icons.add),
                type: SignatureButtonType.inc,
              ),
              SizedBox(
                height: 10,
              ),
              SignatureDisplayWidget(
                  numeral: SignatureDisplayNumeral.second, signatureText: "4"),
              SizedBox(
                height: 10,
              ),
              SignatureChangeButton(
                  mainIcon: Icon(Icons.remove), type: SignatureButtonType.dec),
            ],
          ),
        ],
      ),
    );
  }
}
