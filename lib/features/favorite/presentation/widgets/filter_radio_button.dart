import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd_q/common/providers/providers.dart';
import 'package:flutter_tdd_q/common/ui/colors.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterRadioButton extends ConsumerWidget {
  const FilterRadioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomRadioButton(
        padding: 6,
        enableShape: true,
        width: 150,
        absoluteZeroSpacing: false,
        buttonValues: getListOfFilters(),
        buttonLables: getListOfFilters(),
        defaultSelected: getListOfFilters()[0],
        radioButtonValue: (value) {
          if (value == FilterFavorites.all.getFiltersString())
            ref.read(filterProvider.notifier).state = FilterFavorites.all;
          else
            ref.read(filterProvider.notifier).state = FilterFavorites.vegan;
        },
        enableButtonWrap: false,
        selectedBorderColor: Colors.transparent,
        unSelectedBorderColor: Colors.transparent,
        horizontal: false,
        selectedColor: AppColors.middleGreen,
        unSelectedColor: AppColors.lighterGreen);
  }
}
