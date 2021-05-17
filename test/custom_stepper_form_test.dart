import 'package:custom_stepper_form/custom_stepper_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    testWidgets("formulaire progressif", (WidgetTester formTester) async {
      final stepper_form = CustomStepperForm(
        pages: [
          Text("Page 1"),
          Text("Page 2"),
          Text("Page 3"),
        ],
        titles: [
          CustomStepperFormTitle(title: "Titre 1"),
          CustomStepperFormTitle(title: "Titre 2"),
          CustomStepperFormTitle(title: "Titre 3"),
        ],
      );

      await formTester.tap(find.byWidget(stepper_form));
    });
  });
}
