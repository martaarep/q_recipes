import 'package:flutter_tdd_q/common/providers/providers.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('filter favorite recipes provider tests', () {
    test('filter provider initial state should be FilterFavorites.all', () {
      // Arrange - create container that stores the state of providers
      final container = ProviderContainer();
      // Assert 
      expect(container.read(filterProvider), FilterFavorites.all);
    });
    test(
        'filter provider state should be FilterFavorites.all when state overriden to all',
        () {
      // Arrange - create container that stores the state of providers
      // Arrange - override behaviour of filterProvider
      final container = ProviderContainer(
        overrides: [
          filterProvider
              .overrideWithProvider(StateProvider((ref) => FilterFavorites.all))
        ],
      );
      // Assert 
      expect(container.read(filterProvider), FilterFavorites.all);
    });
    test(
        'filter provider state should be FilterFavorites.vegan when state overriden to vegan',
        () {
      final container = ProviderContainer(
        overrides: [
          filterProvider.overrideWithProvider(
              StateProvider((ref) => FilterFavorites.vegan))
        ],
      );
      expect(container.read(filterProvider), FilterFavorites.vegan);
    });
  });
}
