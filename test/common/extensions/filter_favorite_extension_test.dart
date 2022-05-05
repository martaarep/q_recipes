import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      "getFiltersString should return 'VEGAN' for FilterFavorites.vegan filter",
      () {
    const filter = FilterFavorites.vegan;
    final filterString = filter.getFiltersString();
    const expected = 'VEGAN';
    expect(filterString, expected);
  });

  test("getFiltersString should return 'ALL' for FilterFavorites.all filter",
      () {
    const filter = FilterFavorites.all;
    final filterString = filter.getFiltersString();
    const expected = 'ALL';
    expect(filterString, expected);
  });
}
