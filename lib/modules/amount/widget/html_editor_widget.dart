import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';

class HtmlEditorWidget extends StatelessWidget {
  const HtmlEditorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AmountScreenController>(builder: (context, amountCtrl, _) {
      return SingleChildScrollView(scrollDirection: Axis.vertical,
        child: HtmlEditor(
          controller: amountCtrl.htmlController, 
          htmlEditorOptions:  const HtmlEditorOptions(inputType: HtmlInputType.text,
            hint: "Type you Text here",
          ),
          htmlToolbarOptions: const HtmlToolbarOptions(
            toolbarType: ToolbarType.nativeScrollable,
          ),
          otherOptions: const OtherOptions(
            height: 200,
          ),
        ),
      );
    });
  }
}
