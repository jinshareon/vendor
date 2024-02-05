import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/textfield.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';
import 'package:uploadimage/modules/amount/widget/html_editor_widget.dart';

class AmountScreenForm extends StatelessWidget {
  const AmountScreenForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Consumer<AmountScreenController>(builder: (context, amountCtrl, _) {
      return Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            KStyles().med15(text: 'Name *'),
            KDimensions().sHeight(ht: size.height * 0.01),
            //!---Name_Field
            TextFieldWidget(
                borderColor: kBillBlack,
                hintText: ' Name',
                readOnly: false,
                textColor: kBlack,
                boxWidth: size.width,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.name,
                textEditingController: amountCtrl.nameCtrl,
                textCapitalization: TextCapitalization.words),
            KDimensions().sHeight(ht: size.height * 0.03),
             KStyles().med15(text: 'Amount/rate *'),
            KDimensions().sHeight(ht: size.height * 0.01),
            //!---Name_Field
            TextFieldWidget(
                borderColor: kBillBlack,
                hintText: 'rate',
                readOnly: false,
                textColor: kBlack,
                boxWidth: size.width,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.number,
                textEditingController: amountCtrl.amountRateCtrl,
                textCapitalization: TextCapitalization.words),
            KDimensions().sHeight(ht: size.height * 0.03),
             KStyles().med15(text: 'Other Details'),
            KDimensions().sHeight(ht: size.height * 0.01),
           const HtmlEditorWidget()
          ]));
    });
  }
}
