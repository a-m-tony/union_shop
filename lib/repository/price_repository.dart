class PriceRepository {
  static const Map<String, String> _prices = {
    't shirts': '£10.00',
    'sweater': '£35.00',
    'hat': '£15.00',
    'Clothing 5': '£25.30',
    'Clothing 6': '£170.99',
    'Clothing 7': '£15.00',
  };

  static String? getPrice(String productName) {
    return _prices[productName];
  }
}
