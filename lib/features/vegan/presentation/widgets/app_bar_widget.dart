import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd_q/common/ui/colors.dart';

class RecipesAppBar extends PreferredSize {
  final List<Widget>? actions;
  RecipesAppBar(this.actions)
      : super(
            child: _RecipesAppBar(actions: actions),
            preferredSize: const Size.fromHeight(kToolbarHeight));
}

class _RecipesAppBar extends StatelessWidget {
  final List<Widget>? actions;
  const _RecipesAppBar({Key? key, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    return SafeArea(
      child: AppBar(
          backgroundColor: AppColors.lightestGreen,
          foregroundColor: AppColors.darkestGreen,
          automaticallyImplyLeading: false,
          leading: canPop
              ? const ClosePageButton(color: AppColors.darkestGreen)
              : Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
                  child: Image.asset(
                    'assets/images/food.png',
                  ),
                ),
          elevation: 0,
          titleTextStyle: const TextStyle(
            fontSize: 24,
            color: AppColors.darkestGreen,
            fontWeight: FontWeight.bold,
          ),
          titleSpacing: 5,
          leadingWidth: 50,
          centerTitle: false,
          primary: false,
          title: Row(
            children: const [
              Text('Q Recipes'),
            ],
          ),
          actions: actions,
          systemOverlayStyle: SystemUiOverlayStyle.light),
    );
  }
}

class ClosePageButton extends StatelessWidget {
  final Color color;
  final bool useCrossIcon;
  final Function? onTap;

  const ClosePageButton({
    Key? key,
    required this.color,
    this.useCrossIcon = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () => onTap == null ? context.router.pop() : onTap!.call(),
      child: Icon(
        useCrossIcon ? Icons.close : Icons.arrow_back,
        color: color,
        size: 20,
      ),
    );
  }
}
