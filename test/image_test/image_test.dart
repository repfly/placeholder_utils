import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:placeholder_utils/placeholder_utils.dart';

void main() {
  group('expect rendered widgets to be', () {
    testWidgets('check if the widget renders in given format', (tester) async {
      await tester.pumpWidget(const Center(
        child: PlaceHolderImage(
          height: 200,
          width: 200,
          centerChild: Text(
            '200x200',
            textDirection: TextDirection.ltr,
          ),
        ),
      ));
      expect(find.byType(PlaceHolderImage), findsOneWidget);
      final childFinder = find.text('200x200');
      expect(childFinder, findsOneWidget);
      final size = tester.getSize(find.byType(PlaceHolderImage));
      expect(size.width, 200);
      expect(size.height, 200);
    });
  });
}
