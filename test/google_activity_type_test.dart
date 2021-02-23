import 'package:fit/apple_activity_type.dart';
import 'package:fit/google_activity_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('index', () {
    test('0', () {
      expect(GoogleActivityType.inVehicle.index, 0);
    });

    test('10', () {
      expect(GoogleActivityType.badminton.index, 10);
    });
    test('20', () {
      expect(GoogleActivityType.boxing.index, 20);
    });
    test('30', () {
      expect(GoogleActivityType.frisbee.index, 30);
    });
    test('40', () {
      expect(GoogleActivityType.kayaking.index, 40);
    });
    test('50', () {
      expect(GoogleActivityType.polo.index, 50);
    });
    test('60', () {
      expect(GoogleActivityType.scubaDiving.index, 60);
    });
    test('70', () {
      expect(GoogleActivityType.skiingRoller.index, 70);
    });
    test('80', () {
      expect(GoogleActivityType.strengthTraining.index, 80);
    });
    test('90', () {
      expect(GoogleActivityType.volleyBallBeach.index, 90);
    });
    test('archery', () {
      expect(GoogleActivityType.archery.index, 119);
    });

    test('other', () {
      expect(GoogleActivityType.other.index, 108);
    });
    test('120', () {
      expect(GoogleActivityType.softball.index, 120);
    });
    test('122', () {
      expect(GoogleActivityType.guidedBreathing.index, 122);
    });
  });
}
