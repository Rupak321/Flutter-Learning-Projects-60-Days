import 'package:flutter_test/flutter_test.dart';

import 'package:day22/main.dart';

void main() {
  testWidgets('shows products and adds one to cart', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Products'), findsOneWidget);
    expect(find.text('Laptop'), findsOneWidget);
    expect(find.text('Phone'), findsOneWidget);
    expect(find.text('Headphones'), findsOneWidget);

    await tester.tap(find.text('Laptop'));
    await tester.pumpAndSettle();

    expect(find.text('Add to Cart'), findsOneWidget);

    await tester.tap(find.text('Add to Cart'));
    await tester.pumpAndSettle();

    expect(find.text('Laptop added to cart'), findsOneWidget);
  });
}
