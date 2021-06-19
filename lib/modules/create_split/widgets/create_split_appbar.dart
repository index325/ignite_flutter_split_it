import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppbarWidget extends PreferredSize {
  final VoidCallback onTapBack;
  final CreateSplitController controller;
  final int pageSize;

  CreateSplitAppbarWidget({
    required this.onTapBack,
    required this.controller,
    required this.pageSize,
  }) : super(
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppTheme.colors.backButton,
                    ),
                    onPressed: onTapBack,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Observer(builder: (context) {
                    return Text.rich(
                      TextSpan(
                        text: "0${controller.currentPage + 1}",
                        style: AppTheme.textStyles.stepperIndicatorPrimary,
                        children: [
                          TextSpan(
                              text: " - 0$pageSize",
                              style: AppTheme
                                  .textStyles.stepperIndicatorSecondary),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
