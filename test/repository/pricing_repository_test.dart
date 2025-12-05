import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/repository/price_repository.dart';

void main() {
  group('PriceRepository', () {
    test('should return correct price for a known product', () {
      expect(PriceRepository.getPrice('t shirts'), '£10.00');
    });

    test('should return correct price for another known product', () {
      expect(PriceRepository.getPrice('sweater'), '£35.00');
    });

    test('should return null for an unknown product', () {
      expect(PriceRepository.getPrice('unknown product'), null);
    });
  });
}
