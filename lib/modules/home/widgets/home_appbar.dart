import 'package:flutter/material.dart';

import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomeAppbarWidget extends StatelessWidget {
  final UserModel user;
  const HomeAppbarWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppTheme.colors.title),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 52),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    user.photoUrl!,
                    height: 62,
                    width: 62,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 220,
                  child: Text(
                    user.name!,
                    style: AppTheme.textStyles.userName,
                  ),
                )
              ],
            ),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.25)),
              ),
              child: Icon(
                Icons.add,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
