import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  var pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
  ];

  var index = 0;

  void nextPage() {
    if (index < 2) {
      setState(() {
        index++;
      });
    }
  }

  void backPage() {
    if (index > 0) {
      setState(() {
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: PreferredSize(
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
                  onPressed: () {
                    backPage();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text.rich(
                  TextSpan(
                    text: "0${index + 1}",
                    style: AppTheme.textStyles.stepperIndicatorPrimary,
                    children: [
                      TextSpan(
                          text: " - 0${pages.length}",
                          style: AppTheme.textStyles.stepperIndicatorSecondary),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: pages[index],
      bottomNavigationBar: Container(
        height: 60,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancelar",
                      style: AppTheme.textStyles.button,
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 60,
                  color: AppTheme.colors.divider,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      nextPage();
                    },
                    child: Text(
                      "Continuar",
                      style: AppTheme.textStyles.button,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
